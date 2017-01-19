[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.accessory.Draggable

super class : [phina.accessory.Accessory](phina.accessory.Accessory.md)

## Properties




## Methods

### Class methods

* [lock](#class_lock)
* [unlock](#class_unlock)

### Instance methods (own)

* [init](#instance_init)
* [back](#instance_back)
* [enable](#instance_enable)

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

## Source code of methods (class)

### <a name="class_lock"></a>lock
```javascript
function () {
        this._lock = true;
      }
```

### <a name="class_unlock"></a>unlock
```javascript
function () {
        this._lock = false;
      }
```


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (target) {
      this.superInit(target);

      this.initialPosition = phina.geom.Vector2(0, 0);
      var self = this;

      this.on('attached', function() {
        this.target.setInteractive(true);

        this._dragging = false;

        this.target.on('pointstart', function(e) {
          if (phina.accessory.Draggable._lock) return ;

          this._dragging = true;
          self.initialPosition.x = this.x;
          self.initialPosition.y = this.y;
          self.flare('dragstart');
          this.flare('dragstart');
        });
        this.target.on('pointmove', function(e) {
          if (!this._dragging) return ;

          this.x += e.pointer.dx;
          this.y += e.pointer.dy;
          self.flare('drag');
          this.flare('drag');
        });

        this.target.on('pointend', function(e) {
          if (!this._dragging) return ;

          this._dragging = false;
          self.flare('dragend');
          this.flare('dragend');
        });
      });
    }
```

### <a name="instance_back"></a>back
```javascript
function (time, easing) {
      if (time) {
        var t = this.target;
        t.setInteractive(false);
        var tweener = phina.accessory.Tweener().attachTo(t);
        tweener
          .to({
            x: this.initialPosition.x,
            y: this.initialPosition.y,
          }, time, easing || 'easeOutElastic')
          .call(function() {
            tweener.remove();

            t.setInteractive(true);
            this.flare('backend');
          }, this);
      }
      else {
        this.target.x = this.initialPosition.x;
        this.target.y = this.initialPosition.y;
        this.flare('backend');
      }
    }
```

### <a name="instance_enable"></a>enable
```javascript
function () {
      this._enable = true;
    }
```


