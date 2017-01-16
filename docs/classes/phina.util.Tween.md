# phina.util.Tween

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties

* EASING : Object

### Instance properties (own)


### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* fromTo
* to
* from
* by
* yoyo
* gain
* forward
* backward
* seek

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
  function (target) {
        this.superInit();
  
        this.time = 0;
      }
  ```
* fromTo
  ```javascript
  function (target, beginProps, finishProps, duration, easing) {
        this.target = target;
        this.beginProps = beginProps;
        this.finishProps = finishProps;
        this.duration = duration || 1000;
        this.easing = easing;
  
        // setup
        this.changeProps = {};
        for (var key in beginProps) {
            this.changeProps[key] = finishProps[key] - beginProps[key];
        }
  
        return this;
      }
  ```
* to
  ```javascript
  function (target, finishProps, duration, easing) {
        var beginProps = {};
  
        for (var key in finishProps) {
          beginProps[key] = target[key];
        }
  
        this.fromTo(target, beginProps, finishProps, duration, easing);
  
        return this;
      }
  ```
* from
  ```javascript
  function (target, beginProps, duration, easing) {
          var finishProps = {};
  
          for (var key in beginProps) {
            finishProps[key] = target[key];
            target[key] = beginProps[key];
          }
  
          this.fromTo(target, beginProps, finishProps, duration, easing);
  
          return this;
      }
  ```
* by
  ```javascript
  function (target, props, duration, easing) {
        var beginProps = {};
        var finishProps = {};
  
        for (var key in props) {
          beginProps[key] = target[key];
          finishProps[key] = target[key] + props[key];
        }
  
        this.fromTo(target, beginProps, finishProps, duration, easing);
  
        return this;
      }
  ```
* yoyo
  ```javascript
  function () {
        var temp = this.beginProps;
        this.beginProps = this.finishProps;
        this.finishProps = temp;
        this.changeProps.forIn(function(key, value, index) {
          this.changeProps[key] = -value;
          this.target[key] = this.beginProps[key];
        }, this);
        // TODO: easing も反転させる
        // this.easing = easing;
        return this;
      }
  ```
* gain
  ```javascript
  function (time) {
        this.seek(this.time + time);
      }
  ```
* forward
  ```javascript
  function (time) {
        this.seek(this.time + time);
      }
  ```
* backward
  ```javascript
  function (time) {
        this.seek(this.time - time);
      }
  ```
* seek
  ```javascript
  function (time) {
        this.time = Math.clamp(time, 0, this.duration);
  
        this.beginProps.forIn(function(key, value) {
          var v = this.easing(this.time, value, this.changeProps[key], this.duration);
          this.target[key] = v;
        }, this);
  
        return this;
      }
  ```

