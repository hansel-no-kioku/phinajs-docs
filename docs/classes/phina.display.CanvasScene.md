# phina.display.CanvasScene

super class : [phina.display.DisplayScene](phina.display.DisplayScene.md)

## Properties

### Class properties


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
  
        console.warn('[phina warn] CanvasScene は非推奨になりました. DisplayScene をお使いください.');
      }
  ```

