[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.input.Keyboard

super class : [phina.input.Input](phina.input.Input.md)

## Properties

### Class properties

* ARROW_BIT_TO_ANGLE_TABLE : 
  * 1 : 270
  * 2 : 0
  * 3 : 315
  * 4 : 90
  * 6 : 45
  * 7 : 0
  * 8 : 180
  * 9 : 225
  * 11 : 270
  * 12 : 135
  * 13 : 180
  * 14 : 90

* KEY_CODE : 
  * 0 : 48
  * 1 : 49
  * 2 : 50
  * 3 : 51
  * 4 : 52
  * 5 : 53
  * 6 : 54
  * 7 : 55
  * 8 : 56
  * 9 : 57
  * backspace : 8
  * tab : 9
  * enter : 13
  * return : 13
  * shift : 16
  * ctrl : 17
  * alt : 18
  * pause : 19
  * capslock : 20
  * escape : 27
  * pageup : 33
  * pagedown : 34
  * end : 35
  * home : 36
  * left : 37
  * up : 38
  * right : 39
  * down : 40
  * insert : 45
  * delete : 46
  * a : 65
  * A : 65
  * b : 66
  * B : 66
  * c : 67
  * C : 67
  * d : 68
  * D : 68
  * e : 69
  * E : 69
  * f : 70
  * F : 70
  * g : 71
  * G : 71
  * h : 72
  * H : 72
  * i : 73
  * I : 73
  * j : 74
  * J : 74
  * k : 75
  * K : 75
  * l : 76
  * L : 76
  * m : 77
  * M : 77
  * n : 78
  * N : 78
  * o : 79
  * O : 79
  * p : 80
  * P : 80
  * q : 81
  * Q : 81
  * r : 82
  * R : 82
  * s : 83
  * S : 83
  * t : 84
  * T : 84
  * u : 85
  * U : 85
  * v : 86
  * V : 86
  * w : 87
  * W : 87
  * x : 88
  * X : 88
  * y : 89
  * Y : 89
  * z : 90
  * Z : 90
  * numpad0 : 96
  * numpad1 : 97
  * numpad2 : 98
  * numpad3 : 99
  * numpad4 : 100
  * numpad5 : 101
  * numpad6 : 102
  * numpad7 : 103
  * numpad8 : 104
  * numpad9 : 105
  * multiply : 106
  * add : 107
  * subtract : 109
  * decimalpoint : 110
  * divide : 111
  * f1 : 112
  * f2 : 113
  * f3 : 114
  * f4 : 115
  * f5 : 116
  * f6 : 117
  * f7 : 118
  * f8 : 119
  * f9 : 120
  * f10 : 121
  * f11 : 122
  * f12 : 123
  * numlock : 144
  * scrolllock : 145
  * semicolon : 186
  * equalsign : 187
  * comma : 188
  * dash : 189
  * period : 190
  * forward slash : 191
  * / : 191
  * grave accent : 192
  * open bracket : 219
  * back slash : 220
  * close bracket : 221
  * single quote : 222
  * space : 32



### Instance properties (inherited)

* domElement : 
  * querySelector : Function
  * createElement : Function
  * addEventListener : Function
  * body : [object Object]
&ensp;&ensp;(from [phina.input.Input](phina.input.Input.md))

## Methods


### Instance methods (own)

* [init](#instance_init)
* [update](#instance_update)
* [getKey](#instance_getKey)
* [getKeyDown](#instance_getKeyDown)
* [getKeyUp](#instance_getKeyUp)
* [getKeyAngle](#instance_getKeyAngle)
* [getKeyDirection](#instance_getKeyDirection)
* [setKey](#instance_setKey)
* [clearKey](#instance_clearKey)

### Instance methods (inherited)

* [on](phina.util.EventDispatcher.md#instance_on)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [off](phina.util.EventDispatcher.md#instance_off)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [fire](phina.util.EventDispatcher.md#instance_fire)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [flare](phina.util.EventDispatcher.md#instance_flare)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [one](phina.util.EventDispatcher.md#instance_one)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [has](phina.util.EventDispatcher.md#instance_has)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [clear](phina.util.EventDispatcher.md#instance_clear)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (domElement) {
      this.superInit(domElement);

      this.key = {};
      this.press  = {};
      this.down   = {};
      this.up     = {};
      this.last   = {};

      this._keydown = null;
      this._keyup = null;
      this._keypress = null;

      var self = this;
      this.domElement.addEventListener('keydown', function(e) {
        self.key[e.keyCode] = true;
        self._keydown = e.keyCode;
      });

      this.domElement.addEventListener('keyup', function(e) {
        self.key[e.keyCode] = false;
        self._keyup = e.keyCode;
      });
      this.domElement.addEventListener('keypress', function(e) {
        self._keypress = e.keyCode;
      });
    }
```

### <a name="instance_update"></a>update
```javascript
function () {
      // TODO: 一括ビット演算で行うよう修正する
      for (var k in this.key) {
        this.last[k]    = this.press[k];
        this.press[k]   = this.key[k];
        
        this.down[k] = (this.press[k] ^ this.last[k]) & this.press[k];
        this.up[k] = (this.press[k] ^ this.last[k]) & this.last[k];
      }

      if (this._keydown) {
        this.flare('keydown', { keyCode: this._keydown });
        this._keydown = null;
      }
      if (this._keyup) {
        this.flare('keyup', { keyCode: this._keyup });
        this._keyup = null;
      }
      if (this._keypress) {
        this.flare('keypress', { keyCode: this._keypress });
        this._keypress = null;
      }
      
      return this;
    }
```

### <a name="instance_getKey"></a>getKey
```javascript
function (key) {
      if (typeof(key) === "string") {
        key = phina.input.Keyboard.KEY_CODE[key];
      }
      return !!this.press[key] === true;
    }
```

### <a name="instance_getKeyDown"></a>getKeyDown
```javascript
function (key) {
      if (typeof(key) == "string") {
        key = phina.input.Keyboard.KEY_CODE[key];
      }
      return this.down[key] == true;
    }
```

### <a name="instance_getKeyUp"></a>getKeyUp
```javascript
function (key) {
      if (typeof(key) == "string") {
        key = phina.input.Keyboard.KEY_CODE[key];
      }
      return this.up[key] == true;
    }
```

### <a name="instance_getKeyAngle"></a>getKeyAngle
```javascript
function () {
      var angle = null;
      var arrowBit =
        (this.getKey("left")   << 3) | // 1000
        (this.getKey("up")     << 2) | // 0100
        (this.getKey("right")  << 1) | // 0010
        (this.getKey("down"));         // 0001
      
      if (arrowBit !== 0 && phina.input.Keyboard.ARROW_BIT_TO_ANGLE_TABLE.hasOwnProperty(arrowBit)) {
        angle = phina.input.Keyboard.ARROW_BIT_TO_ANGLE_TABLE[arrowBit];
      }
      
      return angle;
    }
```

### <a name="instance_getKeyDirection"></a>getKeyDirection
```javascript
function () {
      var direction = phina.geom.Vector2(0, 0);

      if (this.getKey("left")) {
        direction.x = -1;
      }
      else if (this.getKey("right")) {
        direction.x = 1;
      }
      if (this.getKey("up")) {
        direction.y = -1;
      }
      else if (this.getKey("down")) {
        direction.y = 1;
      }

      if (direction.x && direction.y) {
        direction.div(Math.SQRT2);
      }

      return direction;
    }
```

### <a name="instance_setKey"></a>setKey
```javascript
function (key, flag) {
      if (typeof(key) == "string") {
        key = phina.input.Keyboard.KEY_CODE[key];
      }
      this.key[key] = flag;
      
      return this;
    }
```

### <a name="instance_clearKey"></a>clearKey
```javascript
function () {
      this.key = {};
      
      return this;
    }
```


