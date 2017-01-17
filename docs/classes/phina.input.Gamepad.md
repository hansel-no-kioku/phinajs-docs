[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.input.Gamepad

super class : none

## Properties

### Class properties

* isAvailable : Boolean
* ANALOGUE_BUTTON_THRESHOLD : Number
* BUTTON_CODE : 
  * a : 0
  * b : 1
  * x : 2
  * y : 3
  * l1 : 4
  * r1 : 5
  * l2 : 6
  * r2 : 7
  * select : 8
  * start : 9
  * l3 : 10
  * r3 : 11
  * up : 12
  * down : 13
  * left : 14
  * right : 15
  * special : 16
  * A : 0
  * B : 1
  * X : 2
  * Y : 3
  * L1 : 4
  * R1 : 5
  * L2 : 6
  * R2 : 7
  * SELECT : 8
  * START : 9
  * L3 : 10
  * R3 : 11
  * UP : 12
  * DOWN : 13
  * LEFT : 14
  * RIGHT : 15
  * SPECIAL : 16


### Instance properties (own)

* index : Number
* buttons : Array
* sticks : Array
* id : Unknown
* connected : Boolean
* mapping : Unknown
* timestamp : Unknown


## Methods


### Instance methods (own)

* [init](#instance_init)
* [getKey](#instance_getKey)
* [getKeyDown](#instance_getKeyDown)
* [getKeyUp](#instance_getKeyUp)
* [getKeyAngle](#instance_getKeyAngle)
* [getKeyDirection](#instance_getKeyDirection)
* [getStickAngle](#instance_getStickAngle)
* [getStickDirection](#instance_getStickDirection)



## Source code of methods (instance)

### <a name="instance_init"></a>init
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

### <a name="instance_getKey"></a>getKey
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

### <a name="instance_getKeyDown"></a>getKeyDown
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

### <a name="instance_getKeyUp"></a>getKeyUp
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

### <a name="instance_getKeyAngle"></a>getKeyAngle
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

### <a name="instance_getKeyDirection"></a>getKeyDirection
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

### <a name="instance_getStickAngle"></a>getStickAngle
```javascript
function (stickId) {
      stickId = stickId || 0;
      var stick = this.sticks[stickId];
      return stick ? Math.atan2(-stick.y, stick.x) : null;
    }
```

### <a name="instance_getStickDirection"></a>getStickDirection
```javascript
function (stickId) {
      stickId = stickId || 0;
      return this.sticks ? this.sticks[stickId].clone() : phina.geom.Vector2(0, 0);
    }
```


