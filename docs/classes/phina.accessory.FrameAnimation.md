[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.accessory.FrameAnimation

super class : [phina.accessory.Accessory](phina.accessory.Accessory.md)

## Properties


### Instance properties (own)

* ss : Unknown
* paused : Boolean
* finished : Boolean
* fit : Boolean

### Instance properties (inherited)

* target : Unknown&ensp;&ensp;(from [phina.accessory.Accessory](phina.accessory.Accessory.md))

## Methods


### Instance methods (own)

* [init](#instance_init)
* [update](#instance_update)
* [gotoAndPlay](#instance_gotoAndPlay)
* [gotoAndStop](#instance_gotoAndStop)

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
function (ss) {
      this.superInit();

      this.ss = phina.asset.AssetManager.get('spritesheet', ss);
      this.paused = true;
      this.finished = false;
      this.fit = true;
    }
```

### <a name="instance_update"></a>update
```javascript
function () {
      if (this.paused) return ;
      if (!this.currentAnimation) return ;

      if (this.finished) {
        this.finished = false;
        this.currentFrameIndex = 0;
        return ;
      }

      ++this.frame;
      if (this.frame%this.currentAnimation.frequency === 0) {
        ++this.currentFrameIndex;
        this._updateFrame();
      }
    }
```

### <a name="instance_gotoAndPlay"></a>gotoAndPlay
```javascript
function (name, keep) {
      keep = (keep !== undefined) ? keep : true;
      if (keep && name === this.currentAnimationName
               && this.currentFrameIndex < this.currentAnimation.frames.length) {
        return this;
      }
      this.frame = 0;
      this.currentFrameIndex = 0;
      this.currentAnimation = this.ss.getAnimation(name);
      this._updateFrame();

      this.paused = false;

      return this;
    }
```

### <a name="instance_gotoAndStop"></a>gotoAndStop
```javascript
function (name) {
      this.frame = 0;
      this.currentFrameIndex = 0;
      this.currentAnimation = this.ss.getAnimation(name);
      this._updateFrame();

      this.paused = true;

      return this;
    }
```


