# phina.display.DisplayElement

super class : [phina.app.Object2D](phina.app.Object2D.md)

## Properties

### Class properties


### Instance properties (own)

* visible : Boolean
* alpha : Number
* blendMode : String
* renderChildBySelf : Boolean

### Instance properties (inherited)

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
* setVisible
* show
* hide

### Instance methods (inherited)

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
        options = (options || {});
        
        this.superInit(options);
  
        this.visible = true;
        this.alpha = 1.0;
        this._worldAlpha = 1.0;
      }
  ```
* setVisible
  ```javascript
  function (flag) {
        this.visible = flag;
        return this;
      }
  ```
* show
  ```javascript
  function () {
        this.visible = true;
        return this;
      }
  ```
* hide
  ```javascript
  function () {
        this.visible = false;
        return this;
      }
  ```

