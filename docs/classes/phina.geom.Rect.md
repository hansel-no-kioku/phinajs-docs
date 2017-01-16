# phina.geom.Rect

super class : none

## Properties

### Class properties


### Instance properties (own)

* x : Number
* y : Number
* width : Number
* height : Number

### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* set
* moveTo
* moveBy
* setSize
* padding
* contains
* clone
* toCircle
* toArray

### Instance methods (inherited)


## Sources

* init
  ```javascript
  function (x, y, width, height) {
        this.set(x, y, width, height);
      }
  ```
* set
  ```javascript
  function (x, y, width, height) {
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
  
        return this;
      }
  ```
* moveTo
  ```javascript
  function (x, y) {
        this.x = x;
        this.y = y;
        return this;
      }
  ```
* moveBy
  ```javascript
  function (x, y) {
        this.x += x;
        this.y += y;
        return this;
      }
  ```
* setSize
  ```javascript
  function (w, h) {
        this.width = w;
        this.height = h;
        return this;
      }
  ```
* padding
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
* contains
  ```javascript
  function (x, y) {
        return this.left <= x && x <= this.right && this.top <= y && y <= this.bottom;
      }
  ```
* clone
  ```javascript
  function () {
        return phina.geom.Rect(this.x, this.y, this.width, this.height);
      }
  ```
* toCircle
  ```javascript
  function () {
        var radius = ((this.width < this.height) ? this.width : this.height)/2;
        return phina.geom.Circle(this.centerX, this.centerY, radius);
      }
  ```
* toArray
  ```javascript
  function () {
        return [this.x, this.y, this.width, this.height];
      }
  ```

