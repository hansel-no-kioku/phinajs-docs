# phina.asset.SpriteSheet

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


### Instance methods (own)

* init
* setup
* getFrame
* getAnimation

### Instance methods (inherited)

* load
* isLoaded
* loadDummy
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
      }
  ```
* setup
  ```javascript
  function (params) {
        this._setupFrame(params.frame);
        this._setupAnim(params.animations);
        return this;
      }
  ```
* getFrame
  ```javascript
  function (index) {
        return this.frames[index];
      }
  ```
* getAnimation
  ```javascript
  function (name) {
        name = (name !== undefined) ? name : "default";
        return this.animations[name];
      }
  ```

