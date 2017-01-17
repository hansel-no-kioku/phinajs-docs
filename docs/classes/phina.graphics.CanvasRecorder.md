[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.graphics.CanvasRecorder

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties


### Instance properties (own)

* objectURL : Unknown


## Methods


### Instance methods (own)

* [init](#instance_init)
* [setOption](#instance_setOption)
* [setOptions](#instance_setOptions)
* [start](#instance_start)
* [stop](#instance_stop)
* [open](#instance_open)

### Instance methods (inherited)

* [on](phina.util.EventDispatcher.md#instance_on)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [off](phina.util.EventDispatcher.md#instance_off)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [fire](phina.util.EventDispatcher.md#instance_fire)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [flare](phina.util.EventDispatcher.md#instance_flare)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [one](phina.util.EventDispatcher.md#instance_one)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [has](phina.util.EventDispatcher.md#instance_has)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [clear](phina.util.EventDispatcher.md#instance_clear)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (canvas, options) {
      this.superInit();

      this.canvas = canvas;

      this.gif = new GIF((options || {}).$safe({
        workers: 4,
        quality: 10,
        width: canvas.width,
        height: canvas.height,
      }));

      this.gif.on('finished', function(blob) {
        this.objectURL = URL.createObjectURL(blob);
        this.flare('finished');
      }.bind(this));
    }
```

### <a name="instance_setOption"></a>setOption
```javascript
function (key, value) {
      this.gif.setOption(key, value);
      return this;
    }
```

### <a name="instance_setOptions"></a>setOptions
```javascript
function (options) {
      this.gif.setOptions(options);
      return this;
    }
```

### <a name="instance_start"></a>start
```javascript
function (fps, recordingTime) {
      fps = fps || 30;
      recordingTime = recordingTime || 2000;
      var frameTime = 1000 / fps;
      var time = 0;
      this._id = setInterval(function() {
        var ctx = this.canvas.context;
        this.gif.addFrame(ctx, {
          copy: true,
          delay: frameTime,
        });

        time += frameTime;

        if (time > recordingTime) {
          this.stop();
        }
      }.bind(this), frameTime);

      return this;
    }
```

### <a name="instance_stop"></a>stop
```javascript
function () {
      if (this._id === null) return this;
      clearInterval(this._id);

      // レンダリング
      this.gif.render();
      this._id = null;
      return this;
    }
```

### <a name="instance_open"></a>open
```javascript
function () {
      window.open(this.objectURL);
    }
```


