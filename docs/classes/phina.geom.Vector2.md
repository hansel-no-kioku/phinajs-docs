# phina.geom.Vector2

super class : none

## Properties

### Class properties

* ZERO : Object
* LEFT : Object
* RIGHT : Object
* UP : Object
* DOWN : Object

### Instance properties (own)

* x : Number
* y : Number

### Instance properties (inherited)


## Methods

### Class methods

* min
* max
* add
* sub
* mul
* div
* negate
* dot
* cross
* distance
* distanceSquared
* manhattanDistance
* normal
* reflect
* lerp
* slerp
* random

### Instance methods (own)

* init
* clone
* equals
* set
* add
* sub
* mul
* div
* negate
* dot
* cross
* length
* lengthSquared
* distance
* distanceSquared
* random
* normalize
* toString
* getDirection
* toAngle
* fromAngle
* toDegree
* fromDegree
* rotate

### Instance methods (inherited)


## Sources

* init
  ```javascript
  function (x, y) {
        this.x = x;
        this.y = y;
      }
  ```
* clone
  ```javascript
  function () {
        return phina.geom.Vector2(this.x, this.y);
      }
  ```
* equals
  ```javascript
  function (v) {
        return (this.x === v.x && this.y === v.y);
      }
  ```
* set
  ```javascript
  function (x, y) {
        this.x = x;
        this.y = y;
        return this;
      }
  ```
* add
  ```javascript
  function (v) {
        this.x += v.x;
        this.y += v.y;
        return this;
      }
  ```
* sub
  ```javascript
  function (v) {
        this.x -= v.x;
        this.y -= v.y;
        return this;
      }
  ```
* mul
  ```javascript
  function (n) {
        this.x *= n;
        this.y *= n;
        return this;
      }
  ```
* div
  ```javascript
  function (n) {
        //console.assert(n != 0, "0 division!!");
        n = n || 0.01;
        this.x /= n;
        this.y /= n;
        return this;
      }
  ```
* negate
  ```javascript
  function () {
        this.x = -this.x;
        this.y = -this.y;
        
        return this;
      }
  ```
* dot
  ```javascript
  function (v) {
        return this.x * v.x + this.y * v.y;
      }
  ```
* cross
  ```javascript
  function (v) {
        return (this.x*v.y) - (this.y*v.x);
      }
  ```
* length
  ```javascript
  function () {
        return Math.sqrt(this.x*this.x + this.y*this.y);
      }
  ```
* lengthSquared
  ```javascript
  function () {
        return this.x*this.x + this.y*this.y;
      }
  ```
* distance
  ```javascript
  function (v) {
        return Math.sqrt( Math.pow(this.x-v.x, 2) + Math.pow(this.y-v.y, 2) );
      }
  ```
* distanceSquared
  ```javascript
  function (v) {
        return Math.pow(this.x-v.x, 2) + Math.pow(this.y-v.y, 2);
      }
  ```
* random
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
* normalize
  ```javascript
  function () {
        this.div(this.length());
        return this;
      }
  ```
* toString
  ```javascript
  function () {
        return "{x:{x}, y:{y}}".format(this);
      }
  ```
* getDirection
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
* toAngle
  ```javascript
  function () {
        var rad = Math.atan2(this.y, this.x);
        return (rad + Math.PI*2)%(Math.PI*2);
      }
  ```
* fromAngle
  ```javascript
  function (rad, len) {
        len = len || 1;
        this.x = Math.cos(rad)*len;
        this.y = Math.sin(rad)*len;
        
        return this;
      }
  ```
* toDegree
  ```javascript
  function () {
        return this.toAngle().toDegree();
      }
  ```
* fromDegree
  ```javascript
  function (deg, len) {
        return this.fromAngle(deg.toRadian(), len);
      }
  ```
* rotate
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

