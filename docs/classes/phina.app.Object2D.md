[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.app.Object2D

super class : [phina.app.Element](phina.app.Element.md)

## Properties

### Class properties

* defaults : 
  * x : 0
  * y : 0
  * scaleX : 1
  * scaleY : 1
  * rotation : 0
  * originX : 0.5
  * originY : 0.5
  * width : 64
  * height : 64
  * radius : 32
  * boundingType : 'rect'


### Instance properties (own)

* position : [phina.geom.Vector2](phina.geom.Vector2.md)
* scale : [phina.geom.Vector2](phina.geom.Vector2.md)
* origin : [phina.geom.Vector2](phina.geom.Vector2.md)
* interactive : Boolean
* boundingType : String
* rotation : Number
* x : Number
* y : Number
* originX : Number
* originY : Number
* scaleX : Number
* scaleY : Number
* width : Number
* height : Number
* radius : Number
* top : Number
* right : Number
* bottom : Number
* left : Number
* centerX : Number
* centerY : Number

### Instance properties (inherited)

* children : Array&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* parent : Unknown&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* awake : Boolean&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* tweener : [phina.accessory.Tweener](phina.accessory.Tweener.md)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* draggable : [phina.accessory.Draggable](phina.accessory.Draggable.md)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* flickable : [phina.accessory.Flickable](phina.accessory.Flickable.md)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* physical : [phina.accessory.Physical](phina.accessory.Physical.md)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* accessories : Array&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))

## Methods


### Instance methods (own)

* [init](#instance_init)
* [hitTest](#instance_hitTest)
* [hitTestRect](#instance_hitTestRect)
* [hitTestCircle](#instance_hitTestCircle)
* [hitTestElement](#instance_hitTestElement)
* [globalToLocal](#instance_globalToLocal)
* [setInteractive](#instance_setInteractive)
* [setX](#instance_setX)
* [setY](#instance_setY)
* [setPosition](#instance_setPosition)
* [setRotation](#instance_setRotation)
* [setScale](#instance_setScale)
* [setOrigin](#instance_setOrigin)
* [setWidth](#instance_setWidth)
* [setHeight](#instance_setHeight)
* [setSize](#instance_setSize)
* [setBoundingType](#instance_setBoundingType)
* [moveTo](#instance_moveTo)
* [moveBy](#instance_moveBy)

### Instance methods (inherited)

* [addChild](phina.app.Element.md#instance_addChild)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [addChildTo](phina.app.Element.md#instance_addChildTo)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [addChildAt](phina.app.Element.md#instance_addChildAt)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [getChildAt](phina.app.Element.md#instance_getChildAt)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [getChildByName](phina.app.Element.md#instance_getChildByName)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [getChildIndex](phina.app.Element.md#instance_getChildIndex)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [getParent](phina.app.Element.md#instance_getParent)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [getRoot](phina.app.Element.md#instance_getRoot)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [removeChild](phina.app.Element.md#instance_removeChild)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [remove](phina.app.Element.md#instance_remove)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [isAwake](phina.app.Element.md#instance_isAwake)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [wakeUp](phina.app.Element.md#instance_wakeUp)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [sleep](phina.app.Element.md#instance_sleep)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [fromJSON](phina.app.Element.md#instance_fromJSON)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [toJSON](phina.app.Element.md#instance_toJSON)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [attach](phina.app.Element.md#instance_attach)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [detach](phina.app.Element.md#instance_detach)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [on](phina.util.EventDispatcher.md#instance_on)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [off](phina.util.EventDispatcher.md#instance_off)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [fire](phina.util.EventDispatcher.md#instance_fire)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [flare](phina.util.EventDispatcher.md#instance_flare)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [one](phina.util.EventDispatcher.md#instance_one)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [has](phina.util.EventDispatcher.md#instance_has)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [clear](phina.util.EventDispatcher.md#instance_clear)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [addEventListener](phina.util.EventDispatcher.md#instance_addEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [removeEventListener](phina.util.EventDispatcher.md#instance_removeEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [clearEventListener](phina.util.EventDispatcher.md#instance_clearEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [hasEventListener](phina.util.EventDispatcher.md#instance_hasEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [dispatchEvent](phina.util.EventDispatcher.md#instance_dispatchEvent)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [dispatchEventByType](phina.util.EventDispatcher.md#instance_dispatchEventByType)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))


## Source code of methods (instance)

### <a name="instance_init"></a>init
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

### <a name="instance_hitTest"></a>hitTest
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

### <a name="instance_hitTestRect"></a>hitTestRect
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

### <a name="instance_hitTestCircle"></a>hitTestCircle
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

### <a name="instance_hitTestElement"></a>hitTestElement
```javascript
function (elm) {
      var rect0 = this;
      var rect1 = elm;
      return (rect0.left < rect1.right) && (rect0.right > rect1.left) &&
             (rect0.top < rect1.bottom) && (rect0.bottom > rect1.top);
    }
```

### <a name="instance_globalToLocal"></a>globalToLocal
```javascript
function (p) {
      var matrix = this._worldMatrix.clone();
      matrix.invert();
      // matrix.transpose();

      var temp = matrix.multiplyVector2(p);

      return temp;
    }
```

### <a name="instance_setInteractive"></a>setInteractive
```javascript
function (flag, type) {
      this.interactive = flag;
      if (type) {
        this.boundingType = type;
      }

      return this;
    }
```

### <a name="instance_setX"></a>setX
```javascript
function (x) {
      this.position.x = x;
      return this;
    }
```

### <a name="instance_setY"></a>setY
```javascript
function (y) {
      this.position.y = y;
      return this;
    }
```

### <a name="instance_setPosition"></a>setPosition
```javascript
function (x, y) {
      this.position.x = x;
      this.position.y = y;
      return this;
    }
```

### <a name="instance_setRotation"></a>setRotation
```javascript
function (rotation) {
      this.rotation = rotation;
      return this;
    }
```

### <a name="instance_setScale"></a>setScale
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

### <a name="instance_setOrigin"></a>setOrigin
```javascript
function (x, y) {
      this.origin.x = x;
      this.origin.y = y;
      return this;
    }
```

### <a name="instance_setWidth"></a>setWidth
```javascript
function (width) {
      this.width = width;
      return this;
    }
```

### <a name="instance_setHeight"></a>setHeight
```javascript
function (height) {
      this.height = height;
      return this;
    }
```

### <a name="instance_setSize"></a>setSize
```javascript
function (width, height) {
      this.width  = width;
      this.height = height;
      return this;
    }
```

### <a name="instance_setBoundingType"></a>setBoundingType
```javascript
function (type) {
      this.boundingType = type;
      return this;
    }
```

### <a name="instance_moveTo"></a>moveTo
```javascript
function (x, y) {
      this.position.x = x;
      this.position.y = y;
      return this;
    }
```

### <a name="instance_moveBy"></a>moveBy
```javascript
function (x, y) {
      this.position.x += x;
      this.position.y += y;
      return this;
    }
```


