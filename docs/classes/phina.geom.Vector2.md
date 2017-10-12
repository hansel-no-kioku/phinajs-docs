[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.geom.Vector2

super class : none

## Properties

### Class properties

* ZERO : [phina.geom.Vector2](phina.geom.Vector2.md)
* LEFT : [phina.geom.Vector2](phina.geom.Vector2.md)
* RIGHT : [phina.geom.Vector2](phina.geom.Vector2.md)
* UP : [phina.geom.Vector2](phina.geom.Vector2.md)
* DOWN : [phina.geom.Vector2](phina.geom.Vector2.md)

### Instance properties (own)

* x : Number
* y : Number


## Methods

### Class methods

* [min](#class_min)
* [max](#class_max)
* [add](#class_add)
* [sub](#class_sub)
* [mul](#class_mul)
* [div](#class_div)
* [negate](#class_negate)
* [dot](#class_dot)
* [cross](#class_cross)
* [distance](#class_distance)
* [distanceSquared](#class_distanceSquared)
* [manhattanDistance](#class_manhattanDistance)
* [normal](#class_normal)
* [reflect](#class_reflect)
* [wall](#class_wall)
* [lerp](#class_lerp)
* [slerp](#class_slerp)
* [random](#class_random)

### Instance methods (own)

* [init](#instance_init)
* [clone](#instance_clone)
* [equals](#instance_equals)
* [set](#instance_set)
* [add](#instance_add)
* [sub](#instance_sub)
* [mul](#instance_mul)
* [div](#instance_div)
* [negate](#instance_negate)
* [dot](#instance_dot)
* [cross](#instance_cross)
* [length](#instance_length)
* [lengthSquared](#instance_lengthSquared)
* [distance](#instance_distance)
* [distanceSquared](#instance_distanceSquared)
* [random](#instance_random)
* [normalize](#instance_normalize)
* [toString](#instance_toString)
* [getDirection](#instance_getDirection)
* [toAngle](#instance_toAngle)
* [fromAngle](#instance_fromAngle)
* [toDegree](#instance_toDegree)
* [fromDegree](#instance_fromDegree)
* [rotate](#instance_rotate)


## Source code of methods (class)

### <a name="class_min"></a>min
```javascript
function (a, b) {
        return phina.geom.Vector2(
          (a.x < b.x) ? a.x : b.x,
          (a.y < b.y) ? a.y : b.y
          );
      }
```

### <a name="class_max"></a>max
```javascript
function (a, b) {
        return phina.geom.Vector2(
          (a.x > b.x) ? a.x : b.x,
          (a.y > b.y) ? a.y : b.y
          );
      }
```

### <a name="class_add"></a>add
```javascript
function (lhs, rhs) {
        return phina.geom.Vector2(lhs.x+rhs.x, lhs.y+rhs.y);
      }
```

### <a name="class_sub"></a>sub
```javascript
function (lhs, rhs) {
        return phina.geom.Vector2(lhs.x-rhs.x, lhs.y-rhs.y);
      }
```

### <a name="class_mul"></a>mul
```javascript
function (v, n) {
        return phina.geom.Vector2(v.x*n, v.y*n);
      }
```

### <a name="class_div"></a>div
```javascript
function (v, n) {
        return phina.geom.Vector2(v.x/n, v.y/n);
      }
```

### <a name="class_negate"></a>negate
```javascript
function (v) {
        return phina.geom.Vector2(-v.x, -v.y);
      }
```

### <a name="class_dot"></a>dot
```javascript
function (lhs, rhs) {
        return lhs.x * rhs.x + lhs.y * rhs.y;
      }
```

### <a name="class_cross"></a>cross
```javascript
function (lhs, rhs) {
        return (lhs.x*rhs.y) - (lhs.y*rhs.x);
      }
```

### <a name="class_distance"></a>distance
```javascript
function (lhs, rhs) {
        return Math.sqrt( Math.pow(lhs.x-rhs.x, 2) + Math.pow(lhs.y-rhs.y, 2) );
      }
```

### <a name="class_distanceSquared"></a>distanceSquared
```javascript
function (lhs, rhs) {
        return Math.pow(lhs.x-rhs.x, 2) + Math.pow(lhs.y-rhs.y, 2);
      }
```

### <a name="class_manhattanDistance"></a>manhattanDistance
```javascript
function (lhs, rhs) {
        return Math.abs(lhs.x-rhs.x) + Math.abs(lhs.y-rhs.y);
      }
```

### <a name="class_normal"></a>normal
```javascript
function (a, b) {
        var temp = phina.geom.Vector2.sub(a, b);

        return phina.geom.Vector2(-temp.y, temp.x);
      }
```

### <a name="class_reflect"></a>reflect
```javascript
function (v, normal) {
        var len = phina.geom.Vector2.dot(v, normal);
        var temp= phina.geom.Vector2.mul(normal, 2*len);
        
        return phina.geom.Vector2.sub(v, temp);
      }
```

### <a name="class_wall"></a>wall
```javascript
function (v, normal) {
        var len = phina.geom.Vector2.dot(v, normal);
        var temp= phina.geom.Vector2.mul(normal, len);
        
        return phina.geom.Vector2.sub(v, temp);
      }
```

### <a name="class_lerp"></a>lerp
```javascript
function (a, b, t) {
        return phina.geom.Vector2(
          a.x + (b.x-a.x)*t,
          a.y + (b.y-a.y)*t
        );
      }
```

### <a name="class_slerp"></a>slerp
```javascript
function (lhs, rhs, t) {
          // TODO:
          // cos...
      }
```

### <a name="class_random"></a>random
```javascript
function (min, max, len) {
        return phina.geom.Vector2().random(min, max).mul(len||1);
      }
```


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (x, y) {
      this.x = x;
      this.y = y;
    }
```

### <a name="instance_clone"></a>clone
```javascript
function () {
      return phina.geom.Vector2(this.x, this.y);
    }
```

### <a name="instance_equals"></a>equals
```javascript
function (v) {
      return (this.x === v.x && this.y === v.y);
    }
```

### <a name="instance_set"></a>set
```javascript
function (x, y) {
      this.x = x;
      this.y = y;
      return this;
    }
```

### <a name="instance_add"></a>add
```javascript
function (v) {
      this.x += v.x;
      this.y += v.y;
      return this;
    }
```

### <a name="instance_sub"></a>sub
```javascript
function (v) {
      this.x -= v.x;
      this.y -= v.y;
      return this;
    }
```

### <a name="instance_mul"></a>mul
```javascript
function (n) {
      this.x *= n;
      this.y *= n;
      return this;
    }
```

### <a name="instance_div"></a>div
```javascript
function (n) {
      //console.assert(n != 0, "0 division!!");
      n = n || 0.01;
      this.x /= n;
      this.y /= n;
      return this;
    }
```

### <a name="instance_negate"></a>negate
```javascript
function () {
      this.x = -this.x;
      this.y = -this.y;
      
      return this;
    }
```

### <a name="instance_dot"></a>dot
```javascript
function (v) {
      return this.x * v.x + this.y * v.y;
    }
```

### <a name="instance_cross"></a>cross
```javascript
function (v) {
      return (this.x*v.y) - (this.y*v.x);
    }
```

### <a name="instance_length"></a>length
```javascript
function () {
      return Math.sqrt(this.x*this.x + this.y*this.y);
    }
```

### <a name="instance_lengthSquared"></a>lengthSquared
```javascript
function () {
      return this.x*this.x + this.y*this.y;
    }
```

### <a name="instance_distance"></a>distance
```javascript
function (v) {
      return Math.sqrt( Math.pow(this.x-v.x, 2) + Math.pow(this.y-v.y, 2) );
    }
```

### <a name="instance_distanceSquared"></a>distanceSquared
```javascript
function (v) {
      return Math.pow(this.x-v.x, 2) + Math.pow(this.y-v.y, 2);
    }
```

### <a name="instance_random"></a>random
```javascript
function (min, max, len) {
      var degree = phina.util.Random.randfloat(min || 0, max || 360);
      var rad = degree*Math.DEG_TO_RAD;
      var len = len || 1;

      this.x = Math.cos(rad)*len;
      this.y = Math.sin(rad)*len;

      return this;
    }
```

### <a name="instance_normalize"></a>normalize
```javascript
function () {
      this.div(this.length());
      return this;
    }
```

### <a name="instance_toString"></a>toString
```javascript
function () {
      return "{x:{x}, y:{y}}".format(this);
    }
```

### <a name="instance_getDirection"></a>getDirection
```javascript
function () {
      var angle = this.toDegree();
      if (angle < 45) {
        return "right";
      } else if (angle < 135) {
        return "down";
      } else if (angle < 225) {
        return "left"
      } else if (angle < 315) {
        return "up";
      } else {
        return "right";
      }
    }
```

### <a name="instance_toAngle"></a>toAngle
```javascript
function () {
      var rad = Math.atan2(this.y, this.x);
      return (rad + Math.PI*2)%(Math.PI*2);
    }
```

### <a name="instance_fromAngle"></a>fromAngle
```javascript
function (rad, len) {
      len = len || 1;
      this.x = Math.cos(rad)*len;
      this.y = Math.sin(rad)*len;
      
      return this;
    }
```

### <a name="instance_toDegree"></a>toDegree
```javascript
function () {
      return this.toAngle().toDegree();
    }
```

### <a name="instance_fromDegree"></a>fromDegree
```javascript
function (deg, len) {
      return this.fromAngle(deg.toRadian(), len);
    }
```

### <a name="instance_rotate"></a>rotate
```javascript
function (rad, center) {
      center = center || phina.geom.Vector2(0, 0);

      var x1 = this.x - center.x;
      var y1 = this.y - center.y;
      var x2 = x1 * Math.cos(rad) - y1 * Math.sin(rad);
      var y2 = x1 * Math.sin(rad) + y1 * Math.cos(rad);
      this.set( center.x + x2, center.y + y2 );

      return this;
    }
```


