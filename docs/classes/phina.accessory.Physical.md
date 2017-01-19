[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.accessory.Physical

super class : [phina.accessory.Accessory](phina.accessory.Accessory.md)

## Properties




## Methods


### Instance methods (own)

* [init](#instance_init)
* [update](#instance_update)
* [force](#instance_force)
* [addForce](#instance_addForce)
* [setGravity](#instance_setGravity)
* [setFriction](#instance_setFriction)

### Instance methods (inherited)

* [setTarget](phina.accessory.Accessory.md#instance_setTarget)&ensp;&ensp;(from [phina.accessory.Accessory](phina.accessory.Accessory.md))
* [getTarget](phina.accessory.Accessory.md#instance_getTarget)&ensp;&ensp;(from [phina.accessory.Accessory](phina.accessory.Accessory.md))
* [isAttached](phina.accessory.Accessory.md#instance_isAttached)&ensp;&ensp;(from [phina.accessory.Accessory](phina.accessory.Accessory.md))
* [attachTo](phina.accessory.Accessory.md#instance_attachTo)&ensp;&ensp;(from [phina.accessory.Accessory](phina.accessory.Accessory.md))
* [remove](phina.accessory.Accessory.md#instance_remove)&ensp;&ensp;(from [phina.accessory.Accessory](phina.accessory.Accessory.md))
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
      this.superInit(target);

      this.velocity = phina.geom.Vector2(0, 0);
      this.gravity = phina.geom.Vector2(0, 0);

      this.friction = 1.0;
    }
```

### <a name="instance_update"></a>update
```javascript
function () {
      var t = this.target;

      this.velocity.x *= this.friction;
      this.velocity.y *= this.friction;

      this.velocity.x += this.gravity.x;
      this.velocity.y += this.gravity.y;

      t.position.x += this.velocity.x;
      t.position.y += this.velocity.y;
    }
```

### <a name="instance_force"></a>force
```javascript
function (x, y) {
      this.velocity.set(x, y);
      return this;
    }
```

### <a name="instance_addForce"></a>addForce
```javascript
function (x, y) {
      this.velocity.x += x;
      this.velocity.y += y;
      return this;
    }
```

### <a name="instance_setGravity"></a>setGravity
```javascript
function (x, y) {
      this.gravity.set(x, y);
      return this;
    }
```

### <a name="instance_setFriction"></a>setFriction
```javascript
function (fr) {
      this.friction = fr;
      return this;
    }
```


