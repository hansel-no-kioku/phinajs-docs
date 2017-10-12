[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.geom.Collision

super class : none

## Properties




## Methods

### Class methods

* [testCircleCircle](#class_testCircleCircle)
* [testRectRect](#class_testRectRect)
* [testCircleRect](#class_testCircleRect)
* [testCircleLine](#class_testCircleLine)
* [testLineLine](#class_testLineLine)
* [testRectLine](#class_testRectLine)



## Source code of methods (class)

### <a name="class_testCircleCircle"></a>testCircleCircle
```javascript
function (circle0, circle1) {
        var distanceSquared = phina.geom.Vector2.distanceSquared(circle0, circle1);
        return distanceSquared <= Math.pow(circle0.radius + circle1.radius, 2);
      }
```

### <a name="class_testRectRect"></a>testRectRect
```javascript
function (rect0, rect1) {
        return (rect0.left < rect1.right) && (rect0.right > rect1.left) &&
          (rect0.top < rect1.bottom) && (rect0.bottom > rect1.top);
      }
```

### <a name="class_testCircleRect"></a>testCircleRect
```javascript
function (circle, rect) {
        // まずは大きな矩形で判定(高速化)
        var bigRect = phina.geom.Rect(rect.left-circle.radius, rect.top-circle.radius, rect.width+circle.radius*2, rect.height+circle.radius*2);
        if (bigRect.contains(circle.x, circle.y) === false) {
          return false;
        }
        
        // 2種類の矩形と衝突判定
        var r = phina.geom.Rect(rect.left-circle.radius, rect.top, rect.width+circle.radius*2, rect.height);
        if (r.contains(circle.x, circle.y)) {
          return true;
        }
        r.set(rect.left, rect.top-circle.radius, rect.width, rect.height+circle.radius*2);
        if (r.contains(circle.x, circle.y)) {
          return true;
        }
        
        // 円と矩形の４点の判定
        var c = phina.geom.Circle(circle.x, circle.y, circle.radius);
        // left top
        if (c.contains(rect.left, rect.top)) {
          return true;
        }
        // right top
        if (c.contains(rect.right, rect.top)) {
          return true;
        }
        // right bottom
        if (c.contains(rect.right, rect.bottom)) {
          return true;
        }
        // left bottom
        if (c.contains(rect.left, rect.bottom)) {
          return true;
        }
        
        return false;
      }
```

### <a name="class_testCircleLine"></a>testCircleLine
```javascript
function (circle, p1, p2) {
        // 先に線分端との判定
        if (circle.contains(p1.x, p1.y) || circle.contains(p2.x, p2.y)) return true;
        // 半径の2乗
        var r2 = circle.radius * circle.radius;
        // 円の中心座標
        var p3 = phina.geom.Vector2(circle.x, circle.y);
        // 各ベクトル
        var p1p2 = phina.geom.Vector2.sub(p1, p2);
        var p1p3 = phina.geom.Vector2.sub(p1, p3);
        var p2p3 = phina.geom.Vector2.sub(p2, p3);
        // 外積
        var cross = phina.geom.Vector2.cross(p1p2, p1p3);
        // 外積の絶対値の2乗
        var cross2 = cross * cross;
        // p1p2の長さの2乗
        var length2 = p1p2.lengthSquared();
        // 円の中心から線分までの垂線の距離の2乗
        var d2 = cross2 / length2;
        // 円の半径の2乗より小さいなら重複
        if (d2 <= r2) {
          var dot1 = phina.geom.Vector2.dot(p1p3, p1p2);
          var dot2 = phina.geom.Vector2.dot(p2p3, p1p2);
          // 通常は内積の乗算
          if (dot1 * dot2 <= 0) return true;
        }
        return false;
      }
```

### <a name="class_testLineLine"></a>testLineLine
```javascript
function (p1, p2, p3, p4) {
        //同一ＸＹ軸上に乗ってる場合の誤判定回避
        if (p1.x == p2.x && p1.x == p3.x && p1.x == p4.x) {
          var min = Math.min(p1.y, p2.y);
          var max = Math.max(p1.y, p2.y);
          if (min <= p3.y && p3.y <= max || min <= p4.y && p4.y <= max) return true;
          return false;
        }
        if (p1.y == p2.y && p1.y == p3.y && p1.y == p4.y) {
          var min = Math.min(p1.x, p2.x);
          var max = Math.max(p1.x, p2.x);
          if (min <= p3.x && p3.x <= max || min <= p4.x && p4.x <= max) return true;
          return false;
        }
        //通常判定
        var a = (p1.x - p2.x) * (p3.y - p1.y) + (p1.y - p2.y) * (p1.x - p3.x);
        var b = (p1.x - p2.x) * (p4.y - p1.y) + (p1.y - p2.y) * (p1.x - p4.x);
        var c = (p3.x - p4.x) * (p1.y - p3.y) + (p3.y - p4.y) * (p3.x - p1.x);
        var d = (p3.x - p4.x) * (p2.y - p3.y) + (p3.y - p4.y) * (p3.x - p2.x);
        return a * b <= 0 && c * d <= 0;
      }
```

### <a name="class_testRectLine"></a>testRectLine
```javascript
function (rect, p1, p2) {
          //包含判定(p1が含まれてれば良いのでp2の判定はしない）
          if (rect.left <= p1.x && p1.x <= rect.right && rect.top <= p1.y && p1.y <= rect.bottom ) return true;

          //矩形の４点
          var r1 = phina.geom.Vector2(rect.left, rect.top);     //左上
          var r2 = phina.geom.Vector2(rect.right, rect.top);    //右上
          var r3 = phina.geom.Vector2(rect.right, rect.bottom); //右下
          var r4 = phina.geom.Vector2(rect.left, rect.bottom);  //左下

          //矩形の４辺をなす線分との接触判定
          if (phina.geom.Collision.testLineLine(p1, p2, r1, r2)) return true;
          if (phina.geom.Collision.testLineLine(p1, p2, r2, r3)) return true;
          if (phina.geom.Collision.testLineLine(p1, p2, r3, r4)) return true;
          if (phina.geom.Collision.testLineLine(p1, p2, r1, r4)) return true;
          return false;
      }
```



