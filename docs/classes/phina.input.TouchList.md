# phina.input.TouchList

super class : none

## Properties

### Class properties


### Instance properties (own)

* domElement : Null
* touchMap : Null
* touches : Null

### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* getEmpty
* getTouch
* removeTouch
* update

### Instance methods (inherited)


## Sources

* init
  ```javascript
  function (domElement) {
        this.domElement = domElement;
  
        this.touches = [];
        var touchMap = this.touchMap = {};
  
        // 32bit 周期でIDをループさせる
        this._id = new Uint32Array(1);
  
        var self = this;
        var each = Array.prototype.forEach;
        this.domElement.addEventListener('touchstart', function(e) {
          each.call(e.changedTouches, function(t) {
            var touch = self.getEmpty();
            touchMap[t.identifier] = touch;
            touch._start(t.pointX, t.pointY);
          });
        });
  
        this.domElement.addEventListener('touchend', function(e) {
          each.call(e.changedTouches, function(t) {
            var id = t.identifier;
            var touch = touchMap[id];
            touch._end();
            delete touchMap[id];
          });
        });
        this.domElement.addEventListener('touchmove', function(e) {
          each.call(e.changedTouches, function(t) {
            var touch = touchMap[t.identifier];
            touch._move(t.pointX, t.pointY);
          });
          e.stop();
        });
  
        // iPhone では 6本指以上タッチすると強制的にすべてのタッチが解除される
        this.domElement.addEventListener('touchcancel', function(e) {
          console.warn('この端末での同時タッチ数の制限を超えました。');
          each.call(e.changedTouches, function(t) {
            var id = t.identifier;
            var touch = touchMap[id];
            touch._end();
            delete touchMap[id];
          });
          e.stop();
        });
      }
  ```
* getEmpty
  ```javascript
  function () {
        var touch = phina.input.Touch(this.domElement, true);
      
        touch.id = this.id;
        this.touches.push(touch);
  
        return touch;
      }
  ```
* getTouch
  ```javascript
  function (id) {
        return this.touchMap[id];
      }
  ```
* removeTouch
  ```javascript
  function (touch) {
        var i = this.touches.indexOf(touch);
        this.touches.splice(i, 1);
      }
  ```
* update
  ```javascript
  function () {
        this.touches.forEach(function(touch) {
          if (!touch.released) {
            touch.update();
  
            if (touch.flags === 0) {
              touch.released = true;
            }
          }
          else {
            touch.released = false;
            this.removeTouch(touch);
          }
  
        }, this);
      }
  ```

