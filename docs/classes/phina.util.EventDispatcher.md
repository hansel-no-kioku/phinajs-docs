[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.util.EventDispatcher

super class : none

## Properties




## Methods


### Instance methods (own)

* [init](#instance_init)
* [on](#instance_on)
* [off](#instance_off)
* [fire](#instance_fire)
* [flare](#instance_flare)
* [one](#instance_one)
* [has](#instance_has)
* [clear](#instance_clear)



## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function () {
      this._listeners = {};
    }
```

### <a name="instance_on"></a>on
```javascript
function (type, listener) {
      if (this._listeners[type] === undefined) {
        this._listeners[type] = [];
      }

      this._listeners[type].push(listener);
      return this;
    }
```

### <a name="instance_off"></a>off
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

### <a name="instance_fire"></a>fire
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

### <a name="instance_flare"></a>flare
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

### <a name="instance_one"></a>one
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

### <a name="instance_has"></a>has
```javascript
function (type) {
      if (this._listeners[type] === undefined && !this["on" + type]) return false;
      return true;
    }
```

### <a name="instance_clear"></a>clear
```javascript
function (type) {
      var oldEventName = 'on' + type;
      if (this[oldEventName]) delete this[oldEventName];
      this._listeners[type] = [];
      return this;
    }
```


