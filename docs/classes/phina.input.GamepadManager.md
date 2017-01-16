# phina.input.GamepadManager

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties

* isAvailable : Boolean

### Instance properties (own)

* gamepads : Null

### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* update
* get
* dispose
* isConnected

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
  function () {
        this.superInit();
  
        this.gamepads = {};
        this._created = [];
        this._rawgamepads = [];
  
        this._prevTimestamps = {};
  
        this._getGamepads = null;
        var navigator = phina.global.navigator;
        if (navigator && navigator.getGamepads) {
          this._getGamepads = navigator.getGamepads.bind(navigator);
        } else if (navigator && navigator.webkitGetGamepads) {
          this._getGamepads = navigator.webkitGetGamepads.bind(navigator);
        } else {
          this._getGamepads = function() {};
        }
  
        phina.global.addEventListener('gamepadconnected', function(e) {
          var gamepad = this.get(e.gamepad.index);
          gamepad.connected = true;
          this.flare('connected', {
            gamepad: gamepad,
          });
        }.bind(this));
  
        phina.global.addEventListener('gamepaddisconnected', function(e) {
          var gamepad = this.get(e.gamepad.index);
          gamepad.connected = false;
          this.flare('disconnected', {
            gamepad: gamepad,
          });
        }.bind(this));
      }
  ```
* update
  ```javascript
  function () {
        this._poll();
  
        for (var i = 0, end = this._created.length; i < end; i++) {
          var index = this._created[i];
          var rawgamepad = this._rawgamepads[index];
  
          if (!rawgamepad) {
            continue;
          }
  
          if (rawgamepad.timestamp && (rawgamepad.timestamp === this._prevTimestamps[i])) {
            this.gamepads[index]._updateStateEmpty();
            continue;
          }
  
          this._prevTimestamps[i] = rawgamepad.timestamp;
          this.gamepads[index]._updateState(rawgamepad);
        }
      }
  ```
* get
  ```javascript
  function (index) {
        index = index || 0;
  
        if (!this.gamepads[index]) {
          this._created.push(index);
          this.gamepads[index] = phina.input.Gamepad(index);
        }
  
        return this.gamepads[index];
      }
  ```
* dispose
  ```javascript
  function (index) {
        if (this._created.contains(index)) {
          var gamepad = this.get(index);
          delete this.gamepad[gamepad];
          this._created.erase(index);
  
          gamepad.connected = false;
        }
      }
  ```
* isConnected
  ```javascript
  function (index) {
        index = index || 0;
  
        return this._rawgamepads[index] && this._rawgamepads[index].connected;
      }
  ```

