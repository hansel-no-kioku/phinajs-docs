[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.display.Label

super class : [phina.display.Shape](phina.display.Shape.md)

## Properties

### Class properties

* defaults : 
  * backgroundColor : 'transparent'
  * fill : 'black'
  * stroke : null
  * strokeWidth : 2
  * text : 'Hello, world!'
  * fontSize : 32
  * fontWeight : ''
  * fontFamily : ''HiraKakuProN-W3''
  * align : 'center'
  * baseline : 'middle'
  * lineHeight : 1.2


### Instance properties (own)

* text : String
* font : String
* fontSize : Number
* fontWeight : String
* fontFamily : String
* align : String
* baseline : String
* lineHeight : Number

### Instance properties (inherited)

* width : Number&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* height : Number&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* radius : Number&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* padding : Number&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* backgroundColor : String&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* fill : String&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* stroke : Unknown&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
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
* [calcCanvasWidth](#instance_calcCanvasWidth)
* [calcCanvasHeight](#instance_calcCanvasHeight)
* [prerender](#instance_prerender)
* [renderFill](#instance_renderFill)
* [renderStroke](#instance_renderStroke)

### Instance methods (inherited)

* [calcCanvasSize](phina.display.Shape.md#instance_calcCanvasSize)&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* [isStrokable](phina.display.Shape.md#instance_isStrokable)&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
* [postrender](phina.display.Shape.md#instance_postrender)&ensp;&ensp;(from [phina.display.Shape](phina.display.Shape.md))
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

### <a name="instance_calcCanvasWidth"></a>calcCanvasWidth
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

### <a name="instance_calcCanvasHeight"></a>calcCanvasHeight
```javascript
function () {
      var height = this.fontSize * this._lines.length;
      if (this.baseline !== 'middle') height*=2;
      return height*this.lineHeight + this.padding*2;
    }
```

### <a name="instance_prerender"></a>prerender
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

### <a name="instance_renderFill"></a>renderFill
```javascript
function (canvas) {
      var context = canvas.context;
      this._lines.forEach(function(line, i) {
        context.fillText(line, 0, i*this.lineSize+this._offset);
      }, this);
    }
```

### <a name="instance_renderStroke"></a>renderStroke
```javascript
function (canvas) {
      var context = canvas.context;
      this._lines.forEach(function(line, i) {
        context.strokeText(line, 0, i*this.lineSize+this._offset);
      }, this);
    }
```


