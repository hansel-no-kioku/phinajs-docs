# phina.graphics.CanvasRecorder

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties


### Instance properties (own)

* objectURL : Null

### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* setOption
* setOptions
* start
* stop
* open

### Instance methods (inherited)

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
* setOption
  ```javascript
  function (key, value) {
        this.gif.setOption(key, value);
        return this;
      }
  ```
* setOptions
  ```javascript
  function (options) {
        this.gif.setOptions(options);
        return this;
      }
  ```
* start
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
* stop
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
* open
  ```javascript
  function () {
        window.open(this.objectURL);
      }
  ```

