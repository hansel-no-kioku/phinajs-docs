# phina.util.Grid

super class : none

## Properties

### Class properties


### Instance properties (own)

* width : Number
* columns : Number
* loop : Boolean
* offset : Number

### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* span
* unit
* center

### Instance methods (inherited)


## Sources

* init
  ```javascript
  function () {
        if (typeof arguments[0] === 'object') {
          var param = arguments[0];
          var width = param.width || 640;
          var columns = param.columns || 12;
          var loop = param.loop || false;
          var offset = param.offset || 0;
        }
        else {
          var width   = arguments[0] || 640;
          var columns = arguments[1] || 12;
          var loop    = arguments[2] || false;
          var offset = arguments[3] || 0;
        }
  
        this.width = width;
        this.columns = columns;
        this.loop = loop;
        this.offset = offset;
        this.unitWidth = this.width/this.columns;
      }
  ```
* span
  ```javascript
  function (index) {
        if (this.loop) {
          index += this.columns;
          index %= this.columns;
        }
        return this.unitWidth * index + this.offset;
      }
  ```
* unit
  ```javascript
  function () {
        return this.unitWidth;
      }
  ```
* center
  ```javascript
  function (offset) {
        var index = offset || 0;
        return (this.width/2) + (this.unitWidth * index);
      }
  ```

