# phina.asset.Sound

super class : [phina.asset.Asset](phina.asset.Asset.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)

* serverError : Boolean
* notFound : Boolean
* loadError : Boolean

## Methods

### Class methods

* getAudioContext

### Instance methods (own)

* init
* play
* stop
* pause
* resume
* loadFromBuffer
* setLoop
* setLoopStart
* setLoopEnd
* loadDummy

### Instance methods (inherited)

* load
* isLoaded
* on
* off
* fire
* flare
* one
* has
* clear

## Sources

* init
  ```javascript
  function () {
        this.superInit();
        this.context = phina.asset.Sound.getAudioContext();
        this.gainNode = this.context.createGain();
      }
  ```
* play
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
* stop
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
* pause
  ```javascript
  function () {
        this.source.disconnect();
        return this;
      }
  ```
* resume
  ```javascript
  function () {
        this.source.connect(this.gainNode);
        return this;
      }
  ```
* loadFromBuffer
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
* setLoop
  ```javascript
  function (loop) {
        this.loop = loop;
        return this;
      }
  ```
* setLoopStart
  ```javascript
  function (loopStart) {
        this.loopStart = loopStart;
        return this;
      }
  ```
* setLoopEnd
  ```javascript
  function (loopEnd) {
        this.loopEnd = loopEnd;
        return this;
      }
  ```
* loadDummy
  ```javascript
  function () {
        this.loadFromBuffer();
      }
  ```

