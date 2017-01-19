[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.accessory.Accessory

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties




## Methods


### Instance methods (own)

* [init](#instance_init)
* [setTarget](#instance_setTarget)
* [getTarget](#instance_getTarget)
* [isAttached](#instance_isAttached)
* [attachTo](#instance_attachTo)
* [remove](#instance_remove)

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
function (target) {
      this.superInit();

      this.target = target;
    }
```

### <a name="instance_setTarget"></a>setTarget
```javascript
function (target) {
      if (this.target === target) return ;

      this.target = target;
      return this;
    }
```

### <a name="instance_getTarget"></a>getTarget
```javascript
function () {
      return this.target;
    }
```

### <a name="instance_isAttached"></a>isAttached
```javascript
function () {
      return !!this.target;
    }
```

### <a name="instance_attachTo"></a>attachTo
```javascript
function (element) {
      element.attach(this);
      this.setTarget(element);
      return this;
    }
```

### <a name="instance_remove"></a>remove
```javascript
function () {
      this.target.detach(this);
      this.target = null;
    }
```


