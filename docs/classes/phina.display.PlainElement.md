# phina.display.PlainElement

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
* draw

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
        this.canvas = phina.graphics.Canvas();
        this.canvas.setSize(this.width, this.height);
      }
  ```
* draw
  ```javascript
  function (canvas) {
        var image = this.canvas.domElement;
        var w = image.width;
        var h = image.height;
  
        var x = -w*this.origin.x;
        var y = -h*this.origin.y;
  
        canvas.context.drawImage(image,
          0, 0, w, h,
          x, y, w, h
          );
      }
  ```

