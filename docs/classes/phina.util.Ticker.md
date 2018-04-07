[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.util.Ticker

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties


### Instance properties (own)

* frameTime : Number
* frame : Number
* deltaTime : Number
* elapsedTime : Number
* isPlaying : Boolean
* fps : Number


## Methods

### Class methods

* [runner](#class_runner)

### Instance methods (own)

* [runner](#instance_runner)
* [init](#instance_init)
* [tick](#instance_tick)
* [untick](#instance_untick)
* [run](#instance_run)
* [start](#instance_start)
* [resume](#instance_resume)
* [stop](#instance_stop)
* [rewind](#instance_rewind)

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

## Source code of methods (class)

### <a name="class_runner"></a>runner
```javascript
function (run, delay) {
        setTimeout(run, delay);
      }
```


## Source code of methods (instance)

### <a name="instance_runner"></a>runner
```javascript
function (run, delay) {
        setTimeout(run, delay);
      }
```

### <a name="instance_init"></a>init
```javascript
function () {
      this.superInit();

      this.fps = 30;
      this.frame = 0;
      this.deltaTime = 0;
      this.elapsedTime = 0;
      this.isPlaying = true;
      this.runner = phina.util.Ticker.runner;
    }
```

### <a name="instance_tick"></a>tick
```javascript
function (func) {
      this.on('tick', func);
    }
```

### <a name="instance_untick"></a>untick
```javascript
function (func) {
      this.off('tick', func);
    }
```

### <a name="instance_run"></a>run
```javascript
function () {
      var now = (new Date()).getTime();
      // 1フレームに掛かった時間
      this.deltaTime = now - this.currentTime;
      // 全体の経過時間
      this.elapsedTime = now - this.startTime;

      var start = this.currentTime = now;
      this.flare('tick');
      var end = (new Date()).getTime();

      // フレームを更新
      this.frame += 1;

      // calculate elapsed time
      var elapsed = end-start;

      // calculate next waiting time
      var delay = Math.max(this.frameTime-elapsed, 0);

      return delay;
    }
```

### <a name="instance_start"></a>start
```javascript
function () {
      var self = this;
      this.isPlaying = true;
      this.startTime = this.currentTime = (new Date()).getTime();
      var fn = function() {
        if (self.isPlaying) {
          var delay = self.run();
          self.runner(fn, delay);
        }
      };
      fn();

      return this;
    }
```

### <a name="instance_resume"></a>resume
```javascript
function () {
      // TODO: 
    }
```

### <a name="instance_stop"></a>stop
```javascript
function () {
      this.isPlaying = false;
      return this;
    }
```

### <a name="instance_rewind"></a>rewind
```javascript
function () {
      // TODO: 
    }
```


