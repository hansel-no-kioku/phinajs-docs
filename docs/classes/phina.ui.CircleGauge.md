# phina.ui.CircleGauge

super class : [phina.ui.Gauge](phina.ui.Gauge.md)

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
* renderFill
* renderStroke
* postrender

### Instance methods (inherited)

* isFull
* isEmpty
* setValue
* getRate
* calcCanvasWidth
* calcCanvasHeight
* calcCanvasSize
* isStrokable
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
          backgroundColor: 'transparent',
          fill: '#aaa',
          stroke: '#222',
  
          radius: 64,
          anticlockwise: true,
          showPercentage: false, // TODO
        });
  
        this.superInit(options);
  
        this.setBoundingType('circle');
  
        this.radius = options.radius;
        this.anticlockwise = options.anticlockwise;
        this.showPercentage = options.showPercentage;
      }
  ```
* prerender
  ```javascript
  function (canvas) {
        var rate = this.getRate();
        var end = (Math.PI*2)*rate;
        this.startAngle = 0;
        this.endAngle = end;
        
        this.canvas.rotate(-Math.PI*0.5);
        this.canvas.scale(1, -1);
      }
  ```
* renderFill
  ```javascript
  function (canvas) {
        canvas.fillPie(0, 0, this.radius, this.startAngle, this.endAngle);
      }
  ```
* renderStroke
  ```javascript
  function (canvas) {
        canvas.strokeArc(0, 0, this.radius, this.startAngle, this.endAngle);
      }
  ```
* postrender
  ```javascript
  function () {
        // if (this.showPercentage) {
        //   // TODO:
        //   var left = Math.max(0, this.limit-this.time);
        //   this.label.text = Math.ceil(left/1000)+'';
        // }
      }
  ```

