# phina.geom.Circle

super class : none

## Properties

### Class properties


### Instance properties (own)

* x : Number
* y : Number
* radius : Number

### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* set
* moveTo
* moveBy
* contains
* clone
* toRect
* toArray

### Instance methods (inherited)


## Sources

* init
  ```javascript
  function (x, y, radius) {
        this.set(x, y, radius);
      }
  ```
* set
  ```javascript
  function (x, y, radius) {
        this.x = x;
        this.y = y;
        this.radius = radius;
  
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
* contains
  ```javascript
  function (x, y) {
        var lenX = this.x-x;
        var lenY = this.y-y;
        var lenSquared = (lenX*lenX)+(lenY*lenY);
  
        return lenSquared <= this.radius*this.radius;
      }
  ```
* clone
  ```javascript
  function () {
        return phina.geom.Circle(this.x, this.y, this.radius);
      }
  ```
* toRect
  ```javascript
  function () {
        var size = this.size;
        return phina.geom.Rect(this.x - this.radius, this.y - this.radius, size, size);
      }
  ```
* toArray
  ```javascript
  function () {
        return [this.x, this.y, this.radius];
      }
  ```

