# phina.display.PolygonShape

super class : [phina.display.Shape](phina.display.Shape.md)

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
* prerender

### Instance methods (inherited)

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
        options = ({}).$safe(options, {
          backgroundColor: 'transparent',
          fill: 'cyan',
          stroke: '#aaa',
          strokeWidth: 4,
  
          radius: 32,
          sides: 5,
        });
        this.superInit(options);
  
        this.setBoundingType('circle');
        this.sides = options.sides;
      }
  ```
* prerender
  ```javascript
  function (canvas) {
        canvas.polygon(0, 0, this.radius, this.sides);
      }
  ```

