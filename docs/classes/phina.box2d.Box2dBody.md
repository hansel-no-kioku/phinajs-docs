[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.box2d.Box2dBody

super class : [phina.accessory.Accessory](phina.accessory.Accessory.md)

## Properties



### Instance properties (inherited)

* target : Unknown&ensp;&ensp;(from [phina.accessory.Accessory](phina.accessory.Accessory.md))

## Methods


### Instance methods (own)

* [init](#instance_init)
* [update](#instance_update)

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
function (params) {
      this.superInit();

      this.world = params.world;
      this.type = params.type;
      this.shape = params.shape;

      this._init();

      this.on('attached', function() {
        var target = this.target;

        var p = new b2.Vec2(target.x/this.world._scale, target.y/this.world._scale);
        this.body.SetPosition(p);
        this.body.SetAngle(target.rotation * Math.PI/180);

        this._bindFixture(this.target);
      });
    }
```

### <a name="instance_update"></a>update
```javascript
function (app) {
      var target = this.target;

      target.x = this.body.GetPosition().x * this.world._scale;
      target.y = this.body.GetPosition().y * this.world._scale;
      target.rotation = this.body.GetAngle() * 180/Math.PI;
    }
```


