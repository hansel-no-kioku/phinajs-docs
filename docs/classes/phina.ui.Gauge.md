# phina.ui.Gauge

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
* isFull
* isEmpty
* setValue
* getRate
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
        options = ({}).$safe(options, {
          width: 256,
          height: 32,
          backgroundColor: 'transparent',
          fill: 'white',
          stroke: '#aaa',
          strokeWidth: 4,
  
          value: 100,
          maxValue: 100,
          gaugeColor: '#44f',
          cornerRadius: 0,
        });
  
        this.superInit(options);
  
        this._value = options.value;
        this.maxValue = options.maxValue;
        this.gaugeColor = options.gaugeColor;
        this.cornerRadius = options.cornerRadius;
  
        this.visualValue = options.value;
        this.animation = true;
        this.animationTime = 1*1000;
      }
  ```
* isFull
  ```javascript
  function () {
        return this.value === this.maxValue;
      }
  ```
* isEmpty
  ```javascript
  function () {
        return this.value === 0;
      }
  ```
* setValue
  ```javascript
  function (value) {
        value = Math.clamp(value, 0, this._maxValue);
  
        // end when now value equal value of argument
        if (this.value === value) return ;
  
        // fire value change event
        this.flare('change');
  
        this._value = value;
  
        if (this.animation) {
          var range = Math.abs(this.visualValue-value);
          var time = (range/this.maxValue)*this.animationTime;
  
          this.tweener.ontween = function() {
            this._dirtyDraw = true;
          }.bind(this);
          this.tweener
            .clear()
            .to({'visualValue': value}, time)
            .call(function() {
              this.flare('changed');
              if (this.isEmpty()) {
                this.flare('empty');
              }
              else if (this.isFull()) {
                this.flare('full');
              }
            }, this);
        }
        else {
          this.visualValue = value;
          this.flare('changed');
          if (this.isEmpty()) {
            this.flare('empty');
          }
          else if (this.isFull()) {
            this.flare('full');
          }
        }
      }
  ```
* getRate
  ```javascript
  function () {
        var rate = this.visualValue/this.maxValue;
        return rate;
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
        var rate = this.getRate();
        canvas.context.fillStyle = this.gaugeColor;
        canvas.context.save();
        canvas.context.clip();
        canvas.fillRect(-this.width/2, -this.height/2, this.width*rate, this.height);
        canvas.context.restore();
      }
  ```

