# phina.app.Object2D

super class : [phina.app.Element](phina.app.Element.md)

## Properties

### Class properties

* defaults : Object

### Instance properties (own)

* position : Null
* rotation : Number
* scale : Null
* origin : Null

### Instance properties (inherited)

* parent : Null
* children : Null
* awake : Boolean

## Methods

### Class methods


### Instance methods (own)

* init
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

### Instance methods (inherited)

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
        this.superInit();
  
        options = ({}).$safe(options, phina.app.Object2D.defaults);
  
        this.position = phina.geom.Vector2(options.x, options.y);
        this.scale    = phina.geom.Vector2(options.scaleX, options.scaleY);
        this.rotation = options.rotation;
        this.origin   = phina.geom.Vector2(options.originX, options.originY);
  
        this._matrix = phina.geom.Matrix33().identity();
        this._worldMatrix = phina.geom.Matrix33().identity();
  
        this.interactive = false;
        this._overFlags = {};
        this._touchFlags = {};
  
        this.width = options.width;
        this.height = options.height;
        this.radius = options.radius;
        this.boundingType = options.boundingType;
      }
  ```
* hitTest
  ```javascript
  function (x, y) {
        if (this.boundingType === 'rect') {
          return this.hitTestRect(x, y);
        }
        else if (this.boundingType === 'circle') {
          return this.hitTestCircle(x, y);
        }
        else {
          // none の場合
          return true;
        }
      }
  ```
* hitTestRect
  ```javascript
  function (x, y) {
        var p = this.globalToLocal(phina.geom.Vector2(x, y));
  
        var left   = -this.width*this.originX;
        var right  = +this.width*(1-this.originX);
        var top    = -this.height*this.originY;
        var bottom = +this.height*(1-this.originY);
  
        return ( left < p.x && p.x < right ) && ( top  < p.y && p.y < bottom );
      }
  ```
* hitTestCircle
  ```javascript
  function (x, y) {
        // 円判定
        var p = this.globalToLocal(phina.geom.Vector2(x, y));
        if (((p.x)*(p.x)+(p.y)*(p.y)) < (this.radius*this.radius)) {
            return true;
        }
        return false;
      }
  ```
* hitTestElement
  ```javascript
  function (elm) {
        var rect0 = this;
        var rect1 = elm;
        return (rect0.left < rect1.right) && (rect0.right > rect1.left) &&
               (rect0.top < rect1.bottom) && (rect0.bottom > rect1.top);
      }
  ```
* globalToLocal
  ```javascript
  function (p) {
        var matrix = this._worldMatrix.clone();
        matrix.invert();
        // matrix.transpose();
  
        var temp = matrix.multiplyVector2(p);
  
        return temp;
      }
  ```
* setInteractive
  ```javascript
  function (flag, type) {
        this.interactive = flag;
        if (type) {
          this.boundingType = type;
        }
  
        return this;
      }
  ```
* setX
  ```javascript
  function (x) {
        this.position.x = x;
        return this;
      }
  ```
* setY
  ```javascript
  function (y) {
        this.position.y = y;
        return this;
      }
  ```
* setPosition
  ```javascript
  function (x, y) {
        this.position.x = x;
        this.position.y = y;
        return this;
      }
  ```
* setRotation
  ```javascript
  function (rotation) {
        this.rotation = rotation;
        return this;
      }
  ```
* setScale
  ```javascript
  function (x, y) {
        this.scale.x = x;
        if (arguments.length <= 1) {
            this.scale.y = x;
        } else {
            this.scale.y = y;
        }
        return this;
      }
  ```
* setOrigin
  ```javascript
  function (x, y) {
        this.origin.x = x;
        this.origin.y = y;
        return this;
      }
  ```
* setWidth
  ```javascript
  function (width) {
        this.width = width;
        return this;
      }
  ```
* setHeight
  ```javascript
  function (height) {
        this.height = height;
        return this;
      }
  ```
* setSize
  ```javascript
  function (width, height) {
        this.width  = width;
        this.height = height;
        return this;
      }
  ```
* setBoundingType
  ```javascript
  function (type) {
        this.boundingType = type;
        return this;
      }
  ```
* moveTo
  ```javascript
  function (x, y) {
        this.position.x = x;
        this.position.y = y;
        return this;
      }
  ```
* moveBy
  ```javascript
  function (x, y) {
        this.position.x += x;
        this.position.y += y;
        return this;
      }
  ```

