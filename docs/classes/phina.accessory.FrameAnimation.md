# phina.accessory.FrameAnimation

super class : [phina.accessory.Accessory](phina.accessory.Accessory.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* update
* gotoAndPlay
* gotoAndStop

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
* clear

## Sources

* init
  ```javascript
  function (ss) {
        this.superInit();
  
        this.ss = phina.asset.AssetManager.get('spritesheet', ss);
        this.paused = true;
        this.finished = false;
        this.fit = true;
      }
  ```
* update
  ```javascript
  function () {
        if (this.paused) return ;
        if (!this.currentAnimation) return ;
  
        if (this.finished) {
          this.finished = false;
          this.currentFrameIndex = 0;
          return ;
        }
  
        ++this.frame;
        if (this.frame%this.currentAnimation.frequency === 0) {
          ++this.currentFrameIndex;
          this._updateFrame();
        }
      }
  ```
* gotoAndPlay
  ```javascript
  function (name) {
        this.frame = 0;
        this.currentFrameIndex = 0;
        this.currentAnimation = this.ss.getAnimation(name);
        this._updateFrame();
  
        this.paused = false;
  
        return this;
      }
  ```
* gotoAndStop
  ```javascript
  function (name) {
        this.frame = 0;
        this.currentFrameIndex = 0;
        this.currentAnimation = this.ss.getAnimation(name);
        this._updateFrame();
  
        this.paused = true;
  
        return this;
      }
  ```

