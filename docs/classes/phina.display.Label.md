# phina.display.Label

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
* calcCanvasWidth
* calcCanvasHeight
* prerender
* renderFill
* renderStroke

### Instance methods (inherited)

* calcCanvasSize
* isStrokable
* postrender
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
        if (typeof arguments[0] !== 'object') {
          options = { text: arguments[0], };
        }
        else {
          options = arguments[0];
        }
  
        options = ({}).$safe(options, phina.display.Label.defaults);
  
        this.superInit(options);
  
        this.text = options.text;
        this.fontSize = options.fontSize;
        this.fontWeight = options.fontWeight;
        this.fontFamily = options.fontFamily;
        this.align = options.align;
        this.baseline = options.baseline;
        this.lineHeight = options.lineHeight;
      }
  ```
* calcCanvasWidth
  ```javascript
  function () {
        var width = 0;
        var canvas = this.canvas;
        canvas.context.font = this.font;
        this._lines.forEach(function(line) {
          var w = canvas.context.measureText(line).width;
          if (width < w) {
            width = w;
          }
        }, this);
        if (this.align !== 'center') width*=2;
  
        return width + this.padding*2;
      }
  ```
* calcCanvasHeight
  ```javascript
  function () {
        var height = this.fontSize * this._lines.length;
        if (this.baseline !== 'middle') height*=2;
        return height*this.lineHeight + this.padding*2;
      }
  ```
* prerender
  ```javascript
  function (canvas) {
        var context = canvas.context;
        context.font = this.font;
        context.textAlign = this.align;
        context.textBaseline = this.baseline;
  
        var lines = this._lines;
        this.lineSize = this.fontSize*this.lineHeight;
        this._offset = -Math.floor(lines.length/2)*this.lineSize;
        this._offset += ((lines.length+1)%2) * (this.lineSize/2);
      }
  ```
* renderFill
  ```javascript
  function (canvas) {
        var context = canvas.context;
        this._lines.forEach(function(line, i) {
          context.fillText(line, 0, i*this.lineSize+this._offset);
        }, this);
      }
  ```
* renderStroke
  ```javascript
  function (canvas) {
        var context = canvas.context;
        this._lines.forEach(function(line, i) {
          context.strokeText(line, 0, i*this.lineSize+this._offset);
        }, this);
      }
  ```

