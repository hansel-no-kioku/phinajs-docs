# phina.display.CanvasLayer

super class : [phina.display.Layer](phina.display.Layer.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)

* renderChildBySelf : Boolean
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
        this.superInit(options);
        this.canvas = phina.graphics.Canvas();
        this.canvas.width  = this.width;
        this.canvas.height = this.height;
  
        this.renderer = phina.display.CanvasRenderer(this.canvas);
        this.domElement = this.canvas.domElement;
  
        this.on('enterframe', function() {
          var temp = this._worldMatrix;
          this._worldMatrix = null;
          this.renderer.render(this);
          this._worldMatrix = temp;
        });
      }
  ```
* draw
  ```javascript
  function (canvas) {
        var image = this.domElement;
        canvas.context.drawImage(image,
          0, 0, image.width, image.height,
          -this.width*this.originX, -this.height*this.originY, this.width, this.height
          );
      }
  ```

