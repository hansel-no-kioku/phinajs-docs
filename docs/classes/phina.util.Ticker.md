# phina.util.Ticker

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties


### Instance properties (own)

* frame : Null
* deltaTime : Null
* elapsedTime : Null

### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* tick
* run
* start
* resume
* stop
* rewind

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
  function () {
        this.superInit();
  
        this.fps = 30;
        this.frame = 0;
        this.deltaTime = 0;
        this.elapsedTime = 0;
      }
  ```
* tick
  ```javascript
  function (func) {
        this.on('tick', func);
      }
  ```
* run
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
* start
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
* resume
  ```javascript
  function () {
        // TODO: 
      }
  ```
* stop
  ```javascript
  function () {
        // TODO: 
      }
  ```
* rewind
  ```javascript
  function () {
        // TODO: 
      }
  ```

