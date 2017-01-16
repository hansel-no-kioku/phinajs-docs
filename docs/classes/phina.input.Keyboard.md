# phina.input.Keyboard

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
* update
* getKey
* getKeyDown
* getKeyUp
* getKeyAngle
* getKeyDirection
* setKey
* clearKey

### Instance methods (inherited)

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
* update
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
* getKey
  ```javascript
  function (key) {
        if (typeof(key) === "string") {
          key = phina.input.Keyboard.KEY_CODE[key];
        }
        return !!this.press[key] === true;
      }
  ```
* getKeyDown
  ```javascript
  function (key) {
        if (typeof(key) == "string") {
          key = phina.input.Keyboard.KEY_CODE[key];
        }
        return this.down[key] == true;
      }
  ```
* getKeyUp
  ```javascript
  function (key) {
        if (typeof(key) == "string") {
          key = phina.input.Keyboard.KEY_CODE[key];
        }
        return this.up[key] == true;
      }
  ```
* getKeyAngle
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
* getKeyDirection
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
* setKey
  ```javascript
  function (key, flag) {
        if (typeof(key) == "string") {
          key = phina.input.Keyboard.KEY_CODE[key];
        }
        this.key[key] = flag;
        
        return this;
      }
  ```
* clearKey
  ```javascript
  function () {
        this.key = {};
        
        return this;
      }
  ```

