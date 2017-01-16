# phina.display.CanvasElement

super class : [phina.display.DisplayElement](phina.display.DisplayElement.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)

* visible : Boolean
* alpha : Number
* blendMode : String
* renderChildBySelf : Boolean
* position : Null
* rotation : Number
* scale : Null
* origin : Null
* parent : Null
* children : Null
* awake : Boolean

## Methods

### Class methods


### Instance methods (own)

* init

### Instance methods (inherited)

* setVisible
* show
* hide
* hitTest
* hitTestRect
* hitTestCircle
* hitTestElement
* globalToLocal
* setInteractive
* setX
* setY
* setPosition
* setRotation
* setScale
* setOrigin
* setWidth
* setHeight
* setSize
* setBoundingType
* moveTo
* moveBy
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
  
        console.warn('[phina warn] CanvasElement は非推奨になりました. DisplayElement をお使いください.');
      }
  ```

