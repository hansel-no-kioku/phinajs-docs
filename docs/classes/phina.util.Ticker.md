[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.util.Ticker

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties


### Instance properties (own)

* frame : Number
* deltaTime : Number
* elapsedTime : Number


## Methods


### Instance methods (own)

* [init](#instance_init)
* [tick](#instance_tick)
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


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function () {
      this.superInit();

      this.fps = 30;
      this.frame = 0;
      this.deltaTime = 0;
      this.elapsedTime = 0;
    }
```

### <a name="instance_tick"></a>tick
```javascript
function (func) {
      this.on('tick', func);
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

      this.startTime = this.currentTime = (new Date()).getTime();

      var fn = function() {
        var delay = self.run();
        setTimeout(fn, delay);
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
      // TODO: 
    }
```

### <a name="instance_rewind"></a>rewind
```javascript
function () {
      // TODO: 
    }
```


