# phina.display.Layer

super class : [phina.display.DisplayElement](phina.display.DisplayElement.md)

## Properties

### Class properties


### Instance properties (own)

* renderChildBySelf : Boolean

### Instance properties (inherited)

* visible : Boolean
* alpha : Number
* blendMode : String
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
        options = ({}).$safe(options, {
          width: 640,
          height: 960,
        });
        this.superInit(options);
        this.width = options.width;
        this.height = options.height;
        this.gridX = phina.util.Grid(options.width, 16);
        this.gridY = phina.util.Grid(options.height, 16);
      }
  ```
* draw
  ```javascript
  function (canvas) {
        if (!this.domElement) return ;
  
        var image = this.domElement;
        canvas.context.drawImage(image,
          0, 0, image.width, image.height,
          -this.width*this.originX, -this.height*this.originY, this.width, this.height
          );
      }
  ```

