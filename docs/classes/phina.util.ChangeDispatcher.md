# phina.util.ChangeDispatcher

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* register
* observe
* unobserve

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
  
        this._observe = true;
      }
  ```
* register
  ```javascript
  function (key, defaultValue) {
        if (arguments.length === 1) {
          var obj = arguments[0];
          obj.forIn(function(key, value) {
            this.register(key, value);
          }, this);
        }
        else {
          var tempKey = '__' + key;
          this[tempKey] = defaultValue;
          this.accessor(key, {
            get: function() {
              return this[tempKey];
            },
            set: function(v) {
              this[tempKey] = v;
              if (this._observe) {
                this.flare('change');
              }
            },
          });
        }
        return this;
      }
  ```
* observe
  ```javascript
  function () {
        this._observe = true;
      }
  ```
* unobserve
  ```javascript
  function () {
        this._observe = false;
      }
  ```

