[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.geom.Rect

super class : none

## Properties


### Instance properties (own)

* x : Number
* y : Number
* width : Number
* height : Number
* left : Number
* top : Number
* right : Number
* bottom : Number
* centerX : Number
* centerY : Number


## Methods


### Instance methods (own)

* [init](#instance_init)
* [set](#instance_set)
* [moveTo](#instance_moveTo)
* [moveBy](#instance_moveBy)
* [setSize](#instance_setSize)
* [padding](#instance_padding)
* [contains](#instance_contains)
* [clone](#instance_clone)
* [toCircle](#instance_toCircle)
* [toArray](#instance_toArray)



## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (x, y, width, height) {
      this.set(x, y, width, height);
    }
```

### <a name="instance_set"></a>set
```javascript
function (x, y, width, height) {
      this.x = x;
      this.y = y;
      this.width = width;
      this.height = height;

      return this;
    }
```

### <a name="instance_moveTo"></a>moveTo
```javascript
function (x, y) {
      this.x = x;
      this.y = y;
      return this;
    }
```

### <a name="instance_moveBy"></a>moveBy
```javascript
function (x, y) {
      this.x += x;
      this.y += y;
      return this;
    }
```

### <a name="instance_setSize"></a>setSize
```javascript
function (w, h) {
      this.width = w;
      this.height = h;
      return this;
    }
```

### <a name="instance_padding"></a>padding
```javascript
function (top, right, bottom, left) {
      // css の padding に合わせて時計回りにパラメータ調整
      switch (arguments.length) {
        case 1:
          top = right = bottom = left = arguments[0];
          break;
        case 2:
          top     = bottom = arguments[0];
          right   = left   = arguments[1];
          break;
        case 3:
          top     = arguments[0];
          right   = left = arguments[1];
          bottom  = arguments[2];
          break;
      }
      
      this.x += left;
      this.y += top;
      this.width -= left+right;
      this.height-= top +bottom;
      
      return this;
    }
```

### <a name="instance_contains"></a>contains
```javascript
function (x, y) {
      return this.left <= x && x <= this.right && this.top <= y && y <= this.bottom;
    }
```

### <a name="instance_clone"></a>clone
```javascript
function () {
      return phina.geom.Rect(this.x, this.y, this.width, this.height);
    }
```

### <a name="instance_toCircle"></a>toCircle
```javascript
function () {
      var radius = ((this.width < this.height) ? this.width : this.height)/2;
      return phina.geom.Circle(this.centerX, this.centerY, radius);
    }
```

### <a name="instance_toArray"></a>toArray
```javascript
function () {
      return [this.x, this.y, this.width, this.height];
    }
```


