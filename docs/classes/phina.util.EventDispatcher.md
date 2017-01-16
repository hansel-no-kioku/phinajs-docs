# phina.util.EventDispatcher

super class : none

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* on
* off
* fire
* flare
* one
* has
* clear

### Instance methods (inherited)


## Sources

* init
  ```javascript
  function () {
        this._listeners = {};
      }
  ```
* on
  ```javascript
  function (type, listener) {
        if (this._listeners[type] === undefined) {
          this._listeners[type] = [];
        }
  
        this._listeners[type].push(listener);
        return this;
      }
  ```
* off
  ```javascript
  function (type, listener) {
        var listeners = this._listeners[type];
        var index = listeners.indexOf(listener);
        if (index != -1) {
          listeners.splice(index,1);
        }
        return this;
      }
  ```
* fire
  ```javascript
  function (e) {
        e.target = this;
        var oldEventName = 'on' + e.type;
        if (this[oldEventName]) this[oldEventName](e);
        
        var listeners = this._listeners[e.type];
        if (listeners) {
          var temp = listeners.clone();
          for (var i=0,len=temp.length; i<len; ++i) {
              temp[i].call(this, e);
          }
        }
        
        return this;
      }
  ```
* flare
  ```javascript
  function (type, param) {
        var e = {type:type};
        if (param) {
          param.forIn(function(key, val) {
            e[key] = val;
          });
        }
        this.fire(e);
  
        return this;
      }
  ```
* one
  ```javascript
  function (type, listener) {
        var self = this;
        
        var func = function() {
          var result = listener.apply(self, arguments);
          self.off(type, func);
          return result;
        };
        
        this.on(type, func);
        
        return this;
      }
  ```
* has
  ```javascript
  function (type) {
        if (this._listeners[type] === undefined && !this["on" + type]) return false;
        return true;
      }
  ```
* clear
  ```javascript
  function (type) {
        var oldEventName = 'on' + type;
        if (this[oldEventName]) delete this[oldEventName];
        this._listeners[type] = [];
        return this;
      }
  ```

