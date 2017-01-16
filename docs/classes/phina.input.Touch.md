# phina.input.Touch

super class : [phina.input.Input](phina.input.Input.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)

* domElement : Null

## Methods

### Class methods


### Instance methods (own)

* init
* getTouch
* getTouchStart
* getTouchEnd
* getPointing
* getPointingStart
* getPointingEnd

### Instance methods (inherited)

* update
* on
* off
* fire
* flare
* one
* has
* clear

## Sources

* init
  ```javascript
  function (domElement, isMulti) {
        this.superInit(domElement);
  
        this.id = null;
  
        if (isMulti === true) {
          return ;
        }
  
        var self = this;
        this.domElement.addEventListener('touchstart', function(e) {
          self._start(e.pointX, e.pointY, true);
        });
  
        this.domElement.addEventListener('touchend', function(e) {
          self._end();
        });
        this.domElement.addEventListener('touchmove', function(e) {
          self._move(e.pointX, e.pointY);
        });
      }
  ```
* getTouch
  ```javascript
  function () {
        return this.now != 0;
      }
  ```
* getTouchStart
  ```javascript
  function () {
        return this.start != 0;
      }
  ```
* getTouchEnd
  ```javascript
  function () {
        return this.end != 0;
      }
  ```
* getPointing
  ```javascript
  function () {
        return this.now != 0;
      }
  ```
* getPointingStart
  ```javascript
  function () {
        return this.start != 0;
      }
  ```
* getPointingEnd
  ```javascript
  function () {
        return this.end != 0;
      }
  ```

