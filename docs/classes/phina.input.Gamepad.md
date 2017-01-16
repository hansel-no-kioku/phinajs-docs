# phina.input.Gamepad

super class : none

## Properties

### Class properties

* isAvailable : Boolean

### Instance properties (own)

* index : Null
* buttons : Null
* sticks : Null
* id : Null
* connected : Boolean
* mapping : Null
* timestamp : Null

### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* getKey
* getKeyDown
* getKeyUp
* getKeyAngle
* getKeyDirection
* getStickAngle
* getStickDirection

### Instance methods (inherited)


## Sources

* init
  ```javascript
  function (index) {
        this.index = index || 0;
  
        this.buttons = Array.range(0, 16).map(function() {
          return {
            value: 0,
            pressed: false,
            last: false,
            down: false,
            up: false,
          };
        });
        this.sticks = Array.range(0, 2).map(function() {
          return phina.geom.Vector2(0, 0);
        });
      }
  ```
* getKey
  ```javascript
  function (button) {
        if (typeof(button) === 'string') {
          button = phina.input.Gamepad.BUTTON_CODE[button];
        }
        if (this.buttons[button]) {
          return this.buttons[button].pressed;
        } else {
          return false;
        }
      }
  ```
* getKeyDown
  ```javascript
  function (button) {
        if (typeof(button) === 'string') {
          button = phina.input.Gamepad.BUTTON_CODE[button];
        }
        if (this.buttons[button]) {
          return this.buttons[button].down;
        } else {
          return false;
        }
      }
  ```
* getKeyUp
  ```javascript
  function (button) {
        if (typeof(button) === 'string') {
          button = phina.input.Gamepad.BUTTON_CODE[button];
        }
        if (this.buttons[button]) {
          return this.buttons[button].up;
        } else {
          return false;
        }
      }
  ```
* getKeyAngle
  ```javascript
  function () {
        var angle = null;
        var arrowBit =
          (this.getKey('left') << 3) | // 1000
          (this.getKey('up') << 2) | // 0100
          (this.getKey('right') << 1) | // 0010
          (this.getKey('down')); // 0001
  
        if (arrowBit !== 0 && ARROW_BIT_TO_ANGLE_TABLE.hasOwnProperty(arrowBit)) {
          angle = ARROW_BIT_TO_ANGLE_TABLE[arrowBit];
        }
  
        return angle;
      }
  ```
* getKeyDirection
  ```javascript
  function () {
        var direction = phina.geom.Vector2(0, 0);
  
        if (this.getKey('left')) {
          direction.x = -1;
        } else if (this.getKey('right')) {
          direction.x = 1;
        }
        if (this.getKey('up')) {
          direction.y = -1;
        } else if (this.getKey('down')) {
          direction.y = 1;
        }
  
        if (direction.x && direction.y) {
          direction.div(Math.SQRT2);
        }
  
        return direction;
      }
  ```
* getStickAngle
  ```javascript
  function (stickId) {
        stickId = stickId || 0;
        var stick = this.sticks[stickId];
        return stick ? Math.atan2(-stick.y, stick.x) : null;
      }
  ```
* getStickDirection
  ```javascript
  function (stickId) {
        stickId = stickId || 0;
        return this.sticks ? this.sticks[stickId].clone() : phina.geom.Vector2(0, 0);
      }
  ```

