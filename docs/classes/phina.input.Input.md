# phina.input.Input

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties

* defaults : Object

### Instance properties (own)

* domElement : Null

### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* update

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
  function (domElement) {
        this.superInit();
        
        this.domElement = domElement || window.document;
  
        this.position = phina.geom.Vector2(0, 0);
        this.startPosition = phina.geom.Vector2(0, 0);
        this.deltaPosition = phina.geom.Vector2(0, 0);
        this.prevPosition = phina.geom.Vector2(0, 0);
        this._tempPosition = phina.geom.Vector2(0, 0);
  
        this.maxCacheNum = phina.input.Input.defaults.maxCacheNum;
        this.minDistance = phina.input.Input.defaults.minDistance;
        this.maxDistance = phina.input.Input.defaults.maxDistance;
        this.cachePositions = [];
        this.flickVelocity = phina.geom.Vector2(0, 0);
  
        this.flags = 0;
      }
  ```
* update
  ```javascript
  function () {
        this.last = this.now;
        this.now = this.flags;
        this.start = (this.now ^ this.last) & this.now;
        this.end   = (this.now ^ this.last) & this.last;
  
        // 変化値を更新
        this.deltaPosition.x = this._tempPosition.x - this.position.x;
        this.deltaPosition.y = this._tempPosition.y - this.position.y;
  
        if (this.deltaPosition.x === 0 && this.deltaPosition.y === 0) {
          this._moveFlag = false;
        }
        else {
          this._moveFlag = true;
        }
  
        if (this.start) {
          this.startPosition.set(this.position.x, this.position.y);
        }
  
        // 前回の座標を更新
        this.prevPosition.set(this.position.x, this.position.y);
  
        // 現在の位置を更新
        this.position.set(this._tempPosition.x, this._tempPosition.y);
  
        if (this.cachePositions.length > this.maxCacheNum) {
          this.cachePositions.shift();
        }
        this.cachePositions.push(this.position.clone());
      }
  ```

