# phina.display.Sprite

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
* setImage
* setFrameIndex

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
  function (image, width, height) {
        this.superInit();
  
        this.srcRect = phina.geom.Rect();
        this.setImage(image, width, height);
      }
  ```
* draw
  ```javascript
  function (canvas) {
        var image = this.image.domElement;
  
        // canvas.context.drawImage(image,
        //   0, 0, image.width, image.height,
        //   -this.width*this.origin.x, -this.height*this.origin.y, this.width, this.height
        //   );
  
        var srcRect = this.srcRect;
        canvas.context.drawImage(image,
          srcRect.x, srcRect.y, srcRect.width, srcRect.height,
          -this._width*this.originX, -this._height*this.originY, this._width, this._height
          );
      }
  ```
* setImage
  ```javascript
  function (image, width, height) {
        if (typeof image === 'string') {
          image = phina.asset.AssetManager.get('image', image);
        }
        this._image = image;
        this.width = this._image.domElement.width;
        this.height = this._image.domElement.height;
  
        this.frameIndex = 0;
  
        if (width) { this.width = width; }
        if (height) { this.height = height; }
  
        return this;
      }
  ```
* setFrameIndex
  ```javascript
  function (index, width, height) {
        var tw  = width || this._width;      // tw
        var th  = height || this._height;    // th
        var row = ~~(this.image.domElement.width / tw);
        var col = ~~(this.image.domElement.height / th);
        var maxIndex = row*col;
        index = index%maxIndex;
        
        var x = index%row;
        var y = ~~(index/row);
        this.srcRect.x = x*tw;
        this.srcRect.y = y*th;
        this.srcRect.width  = tw;
        this.srcRect.height = th;
  
        this._frameIndex = index;
  
        return this;
      }
  ```

