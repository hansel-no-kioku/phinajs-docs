# phina.accessory.Tweener

super class : [phina.accessory.Accessory](phina.accessory.Accessory.md)

## Properties

### Class properties


### Instance properties (own)

* updateType : String

### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* update
* setUpdateType
* to
* by
* from
* wait
* call
* set
* moveTo
* moveBy
* rotateTo
* rotateBy
* scaleTo
* scaleBy
* fade
* fadeOut
* fadeIn
* play
* pause
* stop
* rewind
* yoyo
* setLoop
* clear
* fromJSON

### Instance methods (inherited)

* setTarget
* getTarget
* isAttached
* attachTo
* remove
* on
* off
* fire
* flare
* one
* has

## Sources

* init
  ```javascript
  function (target) {
        this.superInit(target);
  
        this._init();
      }
  ```
* update
  ```javascript
  function (app) {
        this._update(app);
      }
  ```
* setUpdateType
  ```javascript
  function (type) {
        this.updateType = type;
        return this;
      }
  ```
* to
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
* by
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
* from
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
* wait
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
* call
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
* set
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
* moveTo
  ```javascript
  function (x, y, duration, easing) {
        return this.to({ x: x, y: y }, duration, easing);
      }
  ```
* moveBy
  ```javascript
  function (x, y, duration, easing) {
        return this.by({ x: x, y: y }, duration, easing);
      }
  ```
* rotateTo
  ```javascript
  function (rotation, duration, easing) {
        return this.to({ rotation: rotation }, duration, easing);
      }
  ```
* rotateBy
  ```javascript
  function (rotation, duration, easing) {
        return this.by({ rotation: rotation }, duration, easing);
      }
  ```
* scaleTo
  ```javascript
  function (scale, duration, easing) {
        return this.to({ scaleX: scale, scaleY: scale }, duration, easing);
      }
  ```
* scaleBy
  ```javascript
  function (scale, duration, easing) {
        return this.by({ scaleX: scale, scaleY: scale }, duration, easing);
      }
  ```
* fade
  ```javascript
  function (value, duration, easing) {
        return this.to({ alpha: value }, duration, easing);
      }
  ```
* fadeOut
  ```javascript
  function (duration, easing) {
        return this.fade(0.0, duration, easing);
      }
  ```
* fadeIn
  ```javascript
  function (duration, easing) {
        return this.fade(1.0, duration, easing);
      }
  ```
* play
  ```javascript
  function () {
        this.playing = true;
        return this;
      }
  ```
* pause
  ```javascript
  function () {
        this.playing = false;
        return this;
      }
  ```
* stop
  ```javascript
  function () {
        this.playing = false;
        this.rewind();
        return this;
      }
  ```
* rewind
  ```javascript
  function () {
        this._update = this._updateTask;
        this._index = 0;
        return this;
      }
  ```
* yoyo
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
* setLoop
  ```javascript
  function (flag) {
        this._loop = flag;
        return this;
      }
  ```
* clear
  ```javascript
  function () {
        this._init();
        return this;
      }
  ```
* fromJSON
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

