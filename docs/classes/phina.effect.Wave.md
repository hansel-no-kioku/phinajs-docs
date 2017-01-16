# phina.effect.Wave

super class : [phina.display.CircleShape](phina.display.CircleShape.md)

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

* prerender
* calcCanvasWidth
* calcCanvasHeight
* calcCanvasSize
* isStrokable
* postrender
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
        options = (options || {}).$safe({
          fill: 'white',
          stroke: false,
        });
  
        this.superInit(options);
  
        var tweener = phina.accessory.Tweener().attachTo(this);
        tweener
          .to({scaleX:2, scaleY:2, alpha:0}, 500)
          .call(function() {
            this.remove();
          }, this);
      }
  ```

