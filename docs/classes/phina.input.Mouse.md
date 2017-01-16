# phina.input.Mouse

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
* getButton
* getButtonDown
* getButtonUp
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
  function (domElement) {
        this.superInit(domElement);
  
        this.id = 0;
  
        var self = this;
        this.domElement.addEventListener('mousedown', function(e) {
          self._start(e.pointX, e.pointY, 1<<e.flags);
        });
  
        this.domElement.addEventListener('mouseup', function(e) {
          self._end(1<<e.flags);
        });
        this.domElement.addEventListener('mousemove', function(e) {
          self._move(e.pointX, e.pointY);
        });
      }
  ```
* getButton
  ```javascript
  function (button) {
        if (typeof(button) == "string") {
          button = BUTTON_MAP[button];
        }
        
        return (this.now & button) != 0;
      }
  ```
* getButtonDown
  ```javascript
  function (button) {
        if (typeof(button) === 'string') {
          button = BUTTON_MAP[button];
        }
  
        return (this.start & button) != 0;
      }
  ```
* getButtonUp
  ```javascript
  function (button) {
        if (typeof(button) == "string") {
          button = BUTTON_MAP[button];
        }
        
        return (this.end & button) != 0;
      }
  ```
* getPointing
  ```javascript
  function () { return this.getButton("left"); }
  ```
* getPointingStart
  ```javascript
  function () { return this.getButtonDown("left"); }
  ```
* getPointingEnd
  ```javascript
  function () { return this.getButtonUp("left"); }
  ```

