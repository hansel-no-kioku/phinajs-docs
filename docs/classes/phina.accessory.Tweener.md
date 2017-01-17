[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.accessory.Tweener

super class : [phina.accessory.Accessory](phina.accessory.Accessory.md)

## Properties

### Class properties

* UPDATE_MAP : 
  * normal : [object Object]
  * delta : [object Object]
  * fps : [object Object]


### Instance properties (own)

* updateType : String


## Methods


### Instance methods (own)

* [init](#instance_init)
* [update](#instance_update)
* [setUpdateType](#instance_setUpdateType)
* [to](#instance_to)
* [by](#instance_by)
* [from](#instance_from)
* [wait](#instance_wait)
* [call](#instance_call)
* [set](#instance_set)
* [moveTo](#instance_moveTo)
* [moveBy](#instance_moveBy)
* [rotateTo](#instance_rotateTo)
* [rotateBy](#instance_rotateBy)
* [scaleTo](#instance_scaleTo)
* [scaleBy](#instance_scaleBy)
* [fade](#instance_fade)
* [fadeOut](#instance_fadeOut)
* [fadeIn](#instance_fadeIn)
* [play](#instance_play)
* [pause](#instance_pause)
* [stop](#instance_stop)
* [rewind](#instance_rewind)
* [yoyo](#instance_yoyo)
* [setLoop](#instance_setLoop)
* [clear](#instance_clear)
* [fromJSON](#instance_fromJSON)

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


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (target) {
      this.superInit(target);

      this._init();
    }
```

### <a name="instance_update"></a>update
```javascript
function (app) {
      this._update(app);
    }
```

### <a name="instance_setUpdateType"></a>setUpdateType
```javascript
function (type) {
      this.updateType = type;
      return this;
    }
```

### <a name="instance_to"></a>to
```javascript
function (props, duration, easing) {
      this._add({
        type: 'tween',
        mode: 'to',
        props: props,
        duration: duration,
        easing: easing,
      });
      return this;
    }
```

### <a name="instance_by"></a>by
```javascript
function (props, duration, easing) {
      this._add({
        type: 'tween',
        mode: 'by',
        props: props,
        duration: duration,
        easing: easing,
      });

      return this;
    }
```

### <a name="instance_from"></a>from
```javascript
function (props, duration, easing) {
      this._add({
        type: 'tween',
        mode: 'from',
        props: props,
        duration: duration,
        easing: easing,
      });
      return this;
    }
```

### <a name="instance_wait"></a>wait
```javascript
function (time) {
      this._add({
        type: 'wait',
        data: {
          limit: time,
        },
      });
      return this;
    }
```

### <a name="instance_call"></a>call
```javascript
function (func, self, args) {
      this._add({
        type: 'call',
        data: {
          func: func,
          self: self || this,
          args: args,
        },
      });
      return this;
    }
```

### <a name="instance_set"></a>set
```javascript
function (key, value) {
      var values = null;
      if (arguments.length == 2) {
        values = {};
        values[key] = value;
      }
      else {
        values = key;
      }
      this._tasks.push({
        type: "set",
        data: {
          values: values
        }
      });

      return this;
    }
```

### <a name="instance_moveTo"></a>moveTo
```javascript
function (x, y, duration, easing) {
      return this.to({ x: x, y: y }, duration, easing);
    }
```

### <a name="instance_moveBy"></a>moveBy
```javascript
function (x, y, duration, easing) {
      return this.by({ x: x, y: y }, duration, easing);
    }
```

### <a name="instance_rotateTo"></a>rotateTo
```javascript
function (rotation, duration, easing) {
      return this.to({ rotation: rotation }, duration, easing);
    }
```

### <a name="instance_rotateBy"></a>rotateBy
```javascript
function (rotation, duration, easing) {
      return this.by({ rotation: rotation }, duration, easing);
    }
```

### <a name="instance_scaleTo"></a>scaleTo
```javascript
function (scale, duration, easing) {
      return this.to({ scaleX: scale, scaleY: scale }, duration, easing);
    }
```

### <a name="instance_scaleBy"></a>scaleBy
```javascript
function (scale, duration, easing) {
      return this.by({ scaleX: scale, scaleY: scale }, duration, easing);
    }
```

### <a name="instance_fade"></a>fade
```javascript
function (value, duration, easing) {
      return this.to({ alpha: value }, duration, easing);
    }
```

### <a name="instance_fadeOut"></a>fadeOut
```javascript
function (duration, easing) {
      return this.fade(0.0, duration, easing);
    }
```

### <a name="instance_fadeIn"></a>fadeIn
```javascript
function (duration, easing) {
      return this.fade(1.0, duration, easing);
    }
```

### <a name="instance_play"></a>play
```javascript
function () {
      this.playing = true;
      return this;
    }
```

### <a name="instance_pause"></a>pause
```javascript
function () {
      this.playing = false;
      return this;
    }
```

### <a name="instance_stop"></a>stop
```javascript
function () {
      this.playing = false;
      this.rewind();
      return this;
    }
```

### <a name="instance_rewind"></a>rewind
```javascript
function () {
      this._update = this._updateTask;
      this._index = 0;
      return this;
    }
```

### <a name="instance_yoyo"></a>yoyo
```javascript
function () {
      // TODO: 最初の値が分からないので反転できない...
      this._update = this._updateTask;
      this._index = 0;
      this._tasks.each(function(task) {
        if (task.type === 'tween') {

        }
      });
      this.play();

      return this;
    }
```

### <a name="instance_setLoop"></a>setLoop
```javascript
function (flag) {
      this._loop = flag;
      return this;
    }
```

### <a name="instance_clear"></a>clear
```javascript
function () {
      this._init();
      return this;
    }
```

### <a name="instance_fromJSON"></a>fromJSON
```javascript
function (json) {
      if (json.loop !== undefined) {
        this.setLoop(json.loop);
      }

      json.tweens.each(function(t) {
        t = t.clone();
        var method = t.shift();
        this[method].apply(this, t);
      }, this);

      return this;
    }
```


