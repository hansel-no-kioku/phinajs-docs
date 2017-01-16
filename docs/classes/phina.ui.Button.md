# phina.ui.Button

super class : [phina.display.Shape](phina.display.Shape.md)

## Properties

### Class properties

* defaults : Object

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
* prerender
* postrender

### Instance methods (inherited)

* calcCanvasWidth
* calcCanvasHeight
* calcCanvasSize
* isStrokable
* renderFill
* renderStroke
* render
* draw
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
        options = (options || {}).$safe(phina.ui.Button.defaults);
        this.superInit(options);
  
        this.cornerRadius = options.cornerRadius;
        this.text         = options.text;
        this.fontColor    = options.fontColor;
        this.fontSize     = options.fontSize;
        this.fontWeight     = options.fontWeight;
        this.fontFamily   = options.fontFamily;
  
        this.setInteractive(true);
        this.on('pointend', function() {
          this.flare('push');
        });
      }
  ```
* prerender
  ```javascript
  function (canvas) {
        canvas.roundRect(-this.width/2, -this.height/2, this.width, this.height, this.cornerRadius);
      }
  ```
* postrender
  ```javascript
  function (canvas) {
        var context = canvas.context;
        // text
        var font = "{fontWeight} {fontSize}px {fontFamily}".format(this);
        context.font = font;
        context.textAlign = 'center';
        context.textBaseline = 'middle';
        context.fillStyle = this.fontColor;
        context.fillText(this.text, 0, 0);
      }
  ```

