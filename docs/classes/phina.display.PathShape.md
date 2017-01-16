# phina.display.PathShape

super class : [phina.display.Shape](phina.display.Shape.md)

## Properties

### Class properties

* defaults : Object

### Instance properties (own)

* paths : Null

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
* setPaths
* clear
* addPaths
* addPath
* getPath
* getPaths
* changePath
* calcCanvasSize
* calcCanvasWidth
* calcCanvasHeight
* prerender

### Instance methods (inherited)

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

## Sources

* init
  ```javascript
  function (options) {
        options = ({}).$safe(options || {}, PathShape.defaults);
  
        this.superInit(options);
        this.paths = options.paths || [];
        this.lineJoin = options.lineJoin;
        this.lineCap = options.lineCap;
      }
  ```
* setPaths
  ```javascript
  function (paths) {
        this.paths = paths;
        this._dirtyDraw = true;
        return this;
      }
  ```
* clear
  ```javascript
  function () {
        this.paths.length = 0;
        this._dirtyDraw = true;
        return this;
      }
  ```
* addPaths
  ```javascript
  function (paths) {
        [].push.apply(this.paths, paths);
        this._dirtyDraw = true;
        return this;
      }
  ```
* addPath
  ```javascript
  function (x, y) {
        this.paths.push(phina.geom.Vector2(x, y));
        this._dirtyDraw = true;
        return this;
      }
  ```
* getPath
  ```javascript
  function (i) {
        return this.paths[i];
      }
  ```
* getPaths
  ```javascript
  function () {
        return this.paths;
      }
  ```
* changePath
  ```javascript
  function (i, x, y) {
        this.paths[i].set(x, y);
        this._dirtyDraw = true;
        return this;
      }
  ```
* calcCanvasSize
  ```javascript
  function () {
        var paths = this.paths;
        if (paths.length === 0) {
          return {
            width: this.padding * 2,
            height:this.padding * 2,
          };
        }
        var maxX = -Infinity;
        var maxY = -Infinity;
        var minX = Infinity;
        var minY = Infinity;
  
        for (var i = 0, len = paths.length; i < len; ++i) {
          var path = paths[i];
          if (maxX < path.x) { maxX = path.x; }
          if (minX > path.x) { minX = path.x; }
          if (maxY < path.y) { maxY = path.y; }
          if (minY > path.y) { minY = path.y; }
        }
        return {
          width: Math.max(Math.abs(maxX), Math.abs(minX)) * 2 + this.padding * 2,
          height: Math.max(Math.abs(maxY), Math.abs(minY)) * 2 + this.padding * 2,
        };
      }
  ```
* calcCanvasWidth
  ```javascript
  function () {
        return this.calcCanvasSize().width;
      }
  ```
* calcCanvasHeight
  ```javascript
  function () {
        return this.calcCanvasSize().height;
      }
  ```
* prerender
  ```javascript
  function (canvas) {
        canvas.lineCap = this.lineCap;
        canvas.lineJoin = this.lineJoin;
        var paths = this.paths;
        if (paths.length > 1) {
          var c = canvas.context;
          var p = paths[0];
          c.beginPath();
          c.moveTo(p.x, p.y);
          for (var i = 1, len = paths.length; i < len; ++i) {
            p = paths[i];
            c.lineTo(p.x, p.y);
          }
        }
      }
  ```

