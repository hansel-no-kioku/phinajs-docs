[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.asset.Sound

super class : [phina.asset.Asset](phina.asset.Asset.md)

## Properties

### Class properties

* context : {}

### Instance properties (own)

* volume : Unknown
* loop : Boolean
* loopStart : Number
* loopEnd : Number

### Instance properties (inherited)

* serverError : Boolean&ensp;&ensp;(from [phina.asset.Asset](phina.asset.Asset.md))
* notFound : Boolean&ensp;&ensp;(from [phina.asset.Asset](phina.asset.Asset.md))
* loadError : Boolean&ensp;&ensp;(from [phina.asset.Asset](phina.asset.Asset.md))

## Methods

### Class methods

* [getAudioContext](#class_getAudioContext)

### Instance methods (own)

* [init](#instance_init)
* [play](#instance_play)
* [stop](#instance_stop)
* [pause](#instance_pause)
* [resume](#instance_resume)
* [loadFromBuffer](#instance_loadFromBuffer)
* [setLoop](#instance_setLoop)
* [setLoopStart](#instance_setLoopStart)
* [setLoopEnd](#instance_setLoopEnd)
* [loadDummy](#instance_loadDummy)

### Instance methods (inherited)

* [load](phina.asset.Asset.md#instance_load)&ensp;&ensp;(from [phina.asset.Asset](phina.asset.Asset.md))
* [isLoaded](phina.asset.Asset.md#instance_isLoaded)&ensp;&ensp;(from [phina.asset.Asset](phina.asset.Asset.md))
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

### <a name="class_getAudioContext"></a>getAudioContext
```javascript
function () {
        if (!phina.util.Support.webAudio) return null;

        if (this.context) return this.context;

        var g = phina.global;
        var context = null;

        if (g.AudioContext) {
          context = new AudioContext();
        }
        else if (g.webkitAudioContext) {
          context = new webkitAudioContext();
        }
        else if (g.mozAudioContext) {
          context = new mozAudioContext();
        }

        this.context = context;

        return context;
      }
```


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function () {
      this.superInit();
      this.context = phina.asset.Sound.getAudioContext();
      this.gainNode = this.context.createGain();
    }
```

### <a name="instance_play"></a>play
```javascript
function () {
      if (this.source) {
        // TODO: キャッシュする？
      }

      this.source = this.context.createBufferSource();
      this.source.buffer = this.buffer;
      this.source.loop = this._loop;
      this.source.loopStart = this._loopStart;
      this.source.loopEnd = this._loopEnd;

      // connect
      this.source.connect(this.gainNode);
      this.gainNode.connect(this.context.destination);
      // play
      this.source.start(0);
      
      // check play end
      if (this.source.buffer) {
        var time = (this.source.buffer.duration/this.source.playbackRate.value)*1000;
        window.setTimeout(function(self) {
          self.flare('ended');
        }, time, this);
      }

      return this;
    }
```

### <a name="instance_stop"></a>stop
```javascript
function () {
      // stop
      if (this.source) {
        this.source.stop && this.source.stop(0);
        this.source = null;
      }

      return this;
    }
```

### <a name="instance_pause"></a>pause
```javascript
function () {
      this.source.disconnect();
      return this;
    }
```

### <a name="instance_resume"></a>resume
```javascript
function () {
      this.source.connect(this.gainNode);
      return this;
    }
```

### <a name="instance_loadFromBuffer"></a>loadFromBuffer
```javascript
function (buffer) {
      var context = this.context;

      // set default buffer
      if (!buffer) {
        buffer = context.createBuffer( 1, 44100, 44100 );
        var channel = buffer.getChannelData(0);

        for( var i=0; i < channel.length; i++ )
        {
          channel[i] = Math.sin( i / 100 * Math.PI);
        }
      }

      // source
      this.buffer = buffer;
    }
```

### <a name="instance_setLoop"></a>setLoop
```javascript
function (loop) {
      this.loop = loop;
      return this;
    }
```

### <a name="instance_setLoopStart"></a>setLoopStart
```javascript
function (loopStart) {
      this.loopStart = loopStart;
      return this;
    }
```

### <a name="instance_setLoopEnd"></a>setLoopEnd
```javascript
function (loopEnd) {
      this.loopEnd = loopEnd;
      return this;
    }
```

### <a name="instance_loadDummy"></a>loadDummy
```javascript
function () {
      this.loadFromBuffer();
    }
```


