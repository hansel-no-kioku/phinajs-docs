# phina.game.SplashScene

super class : [phina.display.DisplayScene](phina.display.DisplayScene.md)

## Properties

### Class properties

* defaults : Object

### Instance properties (own)


### Instance properties (inherited)

* parent : Null
* children : Null
* awake : Boolean

## Methods

### Class methods


### Instance methods (own)

* init

### Instance methods (inherited)

* hitTest
* exit
* addChild
* addChildTo
* addChildAt
* getChildAt
* getChildByName
* getChildIndex
* getParent
* getRoot
* removeChild
* remove
* isAwake
* wakeUp
* sleep
* fromJSON
* toJSON
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
  function (options) {
        this.superInit(options);
  
        var defaults = phina.game.SplashScene.defaults;
  
        var texture = phina.asset.Texture();
        texture.load(defaults.imageURL).then(function() {
          this._init();
        }.bind(this));
        this.texture = texture;
      }
  ```

