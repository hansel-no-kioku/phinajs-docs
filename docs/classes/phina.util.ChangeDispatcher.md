[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.util.ChangeDispatcher

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties




## Methods


### Instance methods (own)

* [init](#instance_init)
* [register](#instance_register)
* [observe](#instance_observe)
* [unobserve](#instance_unobserve)

### Instance methods (inherited)

* [on](phina.util.EventDispatcher.md#instance_on)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [off](phina.util.EventDispatcher.md#instance_off)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [fire](phina.util.EventDispatcher.md#instance_fire)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [flare](phina.util.EventDispatcher.md#instance_flare)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [one](phina.util.EventDispatcher.md#instance_one)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [has](phina.util.EventDispatcher.md#instance_has)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [clear](phina.util.EventDispatcher.md#instance_clear)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [addEventListener](phina.util.EventDispatcher.md#instance_addEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [removeEventListener](phina.util.EventDispatcher.md#instance_removeEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [clearEventListener](phina.util.EventDispatcher.md#instance_clearEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [hasEventListener](phina.util.EventDispatcher.md#instance_hasEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [dispatchEvent](phina.util.EventDispatcher.md#instance_dispatchEvent)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [dispatchEventByType](phina.util.EventDispatcher.md#instance_dispatchEventByType)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function () {
      this.superInit();

      this._observe = true;
    }
```

### <a name="instance_register"></a>register
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

### <a name="instance_observe"></a>observe
```javascript
function () {
      this._observe = true;
    }
```

### <a name="instance_unobserve"></a>unobserve
```javascript
function () {
      this._observe = false;
    }
```


