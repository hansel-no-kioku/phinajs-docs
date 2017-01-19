[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.display.PathShape

super class : [phina.display.Shape](phina.display.Shape.md)

## Properties

### Class properties

* defaults : 
  * fill : false
  * backgroundColor : 'transparent'
  * lineCap : 'round'
  * lineJoin : 'round'


### Instance properties (own)

* paths : Array
* lineCap : String
* lineJoin : String

### Instance properties (inherited)

* width : Number&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* height : Number&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* radius : Number&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* padding : Number&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* backgroundColor : String&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* fill : Boolean&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* stroke : String&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* strokeWidth : Number&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* shadow : Boolean&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* shadowBlur : Number&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* visible : Boolean&ensp;&ensp;(from [phina.display.DisplayElement](phina.display.DisplayElement.md))
* alpha : Number&ensp;&ensp;(from [phina.display.DisplayElement](phina.display.DisplayElement.md))
* blendMode : String&ensp;&ensp;(from [phina.display.DisplayElement](phina.display.DisplayElement.md))
* renderChildBySelf : Boolean&ensp;&ensp;(from [phina.display.DisplayElement](phina.display.DisplayElement.md))
* position : [phina.geom.Vector2](phina.geom.Vector2.md)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* rotation : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* scale : [phina.geom.Vector2](phina.geom.Vector2.md)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* origin : [phina.geom.Vector2](phina.geom.Vector2.md)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* x : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* y : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* originX : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* originY : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* scaleX : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* scaleY : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* top : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* right : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* bottom : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* left : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* centerX : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* centerY : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* parent : Unknown&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* children : Array&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* awake : Boolean&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* tweener : [phina.accessory.Tweener](phina.accessory.Tweener.md)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* draggable : [phina.accessory.Draggable](phina.accessory.Draggable.md)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* flickable : [phina.accessory.Flickable](phina.accessory.Flickable.md)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* physical : [phina.accessory.Physical](phina.accessory.Physical.md)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* accessories : Array&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))

## Methods


### Instance methods (own)

* [init](#instance_init)
* [setPaths](#instance_setPaths)
* [clear](#instance_clear)
* [addPaths](#instance_addPaths)
* [addPath](#instance_addPath)
* [getPath](#instance_getPath)
* [getPaths](#instance_getPaths)
* [changePath](#instance_changePath)
* [calcCanvasSize](#instance_calcCanvasSize)
* [calcCanvasWidth](#instance_calcCanvasWidth)
* [calcCanvasHeight](#instance_calcCanvasHeight)
* [prerender](#instance_prerender)

### Instance methods (inherited)

* [isStrokable](phina.display.Shape.md#instance_isStrokable)&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* [postrender](phina.display.Shape.md#instance_postrender)&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* [renderFill](phina.display.Shape.md#instance_renderFill)&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* [renderStroke](phina.display.Shape.md#instance_renderStroke)&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* [render](phina.display.Shape.md#instance_render)&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* [draw](phina.display.PlainElement.md#instance_draw)&ensp;&ensp;(from [phina.display.PlainElement](phina.display.PlainElement.md))
* [setVisible](phina.display.DisplayElement.md#instance_setVisible)&ensp;&ensp;(from [phina.display.DisplayElement](phina.display.DisplayElement.md))
* [show](phina.display.DisplayElement.md#instance_show)&ensp;&ensp;(from [phina.display.DisplayElement](phina.display.DisplayElement.md))
* [hide](phina.display.DisplayElement.md#instance_hide)&ensp;&ensp;(from [phina.display.DisplayElement](phina.display.DisplayElement.md))
* [hitTest](phina.app.Object2D.md#instance_hitTest)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [hitTestRect](phina.app.Object2D.md#instance_hitTestRect)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [hitTestCircle](phina.app.Object2D.md#instance_hitTestCircle)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [hitTestElement](phina.app.Object2D.md#instance_hitTestElement)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [globalToLocal](phina.app.Object2D.md#instance_globalToLocal)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setInteractive](phina.app.Object2D.md#instance_setInteractive)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setX](phina.app.Object2D.md#instance_setX)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setY](phina.app.Object2D.md#instance_setY)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setPosition](phina.app.Object2D.md#instance_setPosition)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setRotation](phina.app.Object2D.md#instance_setRotation)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setScale](phina.app.Object2D.md#instance_setScale)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setOrigin](phina.app.Object2D.md#instance_setOrigin)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setWidth](phina.app.Object2D.md#instance_setWidth)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setHeight](phina.app.Object2D.md#instance_setHeight)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setSize](phina.app.Object2D.md#instance_setSize)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setBoundingType](phina.app.Object2D.md#instance_setBoundingType)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [moveTo](phina.app.Object2D.md#instance_moveTo)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [moveBy](phina.app.Object2D.md#instance_moveBy)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
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
      options = ({}).$safe(options || {}, PathShape.defaults);

      this.superInit(options);
      this.paths = options.paths || [];
      this.lineJoin = options.lineJoin;
      this.lineCap = options.lineCap;
    }
```

### <a name="instance_setPaths"></a>setPaths
```javascript
function (paths) {
      this.paths = paths;
      this._dirtyDraw = true;
      return this;
    }
```

### <a name="instance_clear"></a>clear
```javascript
function () {
      this.paths.length = 0;
      this._dirtyDraw = true;
      return this;
    }
```

### <a name="instance_addPaths"></a>addPaths
```javascript
function (paths) {
      [].push.apply(this.paths, paths);
      this._dirtyDraw = true;
      return this;
    }
```

### <a name="instance_addPath"></a>addPath
```javascript
function (x, y) {
      this.paths.push(phina.geom.Vector2(x, y));
      this._dirtyDraw = true;
      return this;
    }
```

### <a name="instance_getPath"></a>getPath
```javascript
function (i) {
      return this.paths[i];
    }
```

### <a name="instance_getPaths"></a>getPaths
```javascript
function () {
      return this.paths;
    }
```

### <a name="instance_changePath"></a>changePath
```javascript
function (i, x, y) {
      this.paths[i].set(x, y);
      this._dirtyDraw = true;
      return this;
    }
```

### <a name="instance_calcCanvasSize"></a>calcCanvasSize
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

### <a name="instance_calcCanvasWidth"></a>calcCanvasWidth
```javascript
function () {
      return this.calcCanvasSize().width;
    }
```

### <a name="instance_calcCanvasHeight"></a>calcCanvasHeight
```javascript
function () {
      return this.calcCanvasSize().height;
    }
```

### <a name="instance_prerender"></a>prerender
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


