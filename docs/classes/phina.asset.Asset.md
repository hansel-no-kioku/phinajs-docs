# phina.asset.Asset

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties


### Instance properties (own)

* serverError : Boolean
* notFound : Boolean
* loadError : Boolean

### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* load
* isLoaded
* loadDummy

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
  function (src) {
        this.superInit();
  
        this.loaded = false;
      }
  ```
* load
  ```javascript
  function (src) {
        this.src = src;
        return phina.util.Flow(this._load.bind(this));
      }
  ```
* isLoaded
  ```javascript
  function () {
        return this.loaded;
      }
  ```
* loadDummy
  ```javascript
  function () { }
  ```

