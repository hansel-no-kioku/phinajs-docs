[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.ui.LabelArea

super class : [phina.display.Label](phina.display.Label.md)

## Properties

### Class properties

* defaults : 
  * verticalAlign : 'top'
  * align : 'left'
  * baseline : 'top'
  * width : 320
  * height : 320
  * scrollX : 0
  * scrollY : 0

* alignToOffsetMap : 
  * start : -0.5
  * left : -0.5
  * center : 0
  * end : 0.5
  * right : 0.5

* verticalAlignToOffsetMap : 
  * top : -0.5
  * center : 0
  * middle : 0
  * bottom : 0.5


### Instance properties (own)

* text : String
* scrollX : Number
* scrollY : Number
* width : Number
* fontSize : Number
* fontWeight : String
* fontFamily : String
* verticalAlign : String
* scroll : [phina.geom.Vector2](phina.geom.Vector2.md)

### Instance properties (inherited)

* font : String&ensp;&ensp;(from [phina.display.Label](phina.display.Label.md))
* align : String&ensp;&ensp;(from [phina.display.Label](phina.display.Label.md))
* baseline : String&ensp;&ensp;(from [phina.display.Label](phina.display.Label.md))
* lineHeight : Number&ensp;&ensp;(from [phina.display.Label](phina.display.Label.md))
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
* [getOffsetY](#instance_getOffsetY)
* [getOffsetX](#instance_getOffsetX)
* [getTextWidthCache](#instance_getTextWidthCache)
* [getLines](#instance_getLines)
* [prerender](#instance_prerender)
* [renderFill](#instance_renderFill)
* [renderStroke](#instance_renderStroke)
* [enableScroll](#instance_enableScroll)

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
      options = {}.$safe(options, LabelArea.defaults);
      this.superInit(options);

      this.verticalAlign = options.verticalAlign;
      this.scroll = options.scroll || phina.geom.Vector2();
      this.scrollX = options.scrollX;
      this.scrollY = options.scrollY;
    }
```

### <a name="instance_calcCanvasWidth"></a>calcCanvasWidth
```javascript
function () {
      return this.width + this.padding * 2;
    }
```

### <a name="instance_calcCanvasHeight"></a>calcCanvasHeight
```javascript
function () {
      return this.height + this.padding * 2;
    }
```

### <a name="instance_getOffsetY"></a>getOffsetY
```javascript
function () {
      if (typeof this.verticalAlign === 'number') {
        return this.verticalAlign;
      }
      return LabelArea.verticalAlignToOffsetMap[this.verticalAlign] || 0;
    }
```

### <a name="instance_getOffsetX"></a>getOffsetX
```javascript
function () {
      return LabelArea.alignToOffsetMap[this.align] || 0;
    }
```

### <a name="instance_getTextWidthCache"></a>getTextWidthCache
```javascript
function () {
      var cache = textWidthCache[this.font];
      return cache || (textWidthCache[this.font] = {});
    }
```

### <a name="instance_getLines"></a>getLines
```javascript
function () {
      if (this._lineUpdate === false) {
        return this._lines;
      }

      this._lineUpdate = false;
      var lines = this._lines = (this.text + '').split('\n');

      if (this.width < 1) return lines;

      var rowWidth = this.width;

      var context = this.canvas.context;
      context.font = this.font;
      //どのへんで改行されるか目星つけとく
      var pos = rowWidth / context.measureText('あ').width | 0;

      var cache = this.getTextWidthCache();
      for (var i = lines.length - 1; 0 <= i; --i) {
        var text = lines[i];
        if (text === '') {
          continue;
        }

        var j = 0;
        var breakFlag = false;
        var char;
        while (true) {
          //if (rowWidth > (cache[text] || (cache[text] = dummyContext.measureText(text).width))) break;

          var len = text.length;
          if (pos >= len) pos = len - 1;
          char = text.substring(0, pos);
          if (!cache[char]) {
            cache[char] = context.measureText(char).width;
          }
          var textWidth = cache[char];

          if (rowWidth < textWidth) {
            do {
              char = text[--pos];
              if (!cache[char]) {
                cache[char] = context.measureText(char).width;
              }
              textWidth -= cache[char];
            } while (rowWidth < textWidth);

          } else {

            do {
              char = text[pos++];
              if (pos >= len) {
                breakFlag = true;
                break;
              }
              if (!cache[char]) {
                cache[char] = context.measureText(char).width;
              }
              textWidth += cache[char];
            } while (rowWidth >= textWidth);

            --pos;
          }
          if (breakFlag) {
            break;
          }
          //0 のときは無限ループになるので、1にしとく
          if (pos === 0) pos = 1;

          lines.splice(i + j, 1, text.substring(0, pos), text = text.substring(pos, len));
          ++j;
        }

      }

      return lines;

    }
```

### <a name="instance_prerender"></a>prerender
```javascript
function (canvas) {
      var context = canvas.context;
      context.font = this.font;
      context.textAlign = this.align;
      context.textBaseline = this.baseline;

      var text = this.text + '';
      var lines = this.getLines();
      var length = lines.length;
      var width = this.width;
      var height = this.height;

      var fontSize = this.fontSize;
      var lineSize = fontSize * this.lineHeight;
      var offsetX = this.getOffsetX() * width;
      var offsetY = this.getOffsetY();
      if (offsetY === 0) {
        offsetY = -Math.floor(length / 2) * lineSize;
        offsetY += ((length + 1) % 2) * (lineSize / 2);
      }
      else if (offsetY < 0) {
        offsetY *= height;
      }
      else {
        offsetY = offsetY * height - length * lineSize + lineSize;
      }

      offsetY -= this.scrollY;
      offsetX -= this.scrollX;
      var start = (offsetY + height / 2) / -lineSize | 0;
      if (start < 0) { start = 0; }

      var end = (height / 2 - offsetY + lineSize * 2) / lineSize | 0;
      lines = lines.filter(function(line, i) {
        return start <= i && end > i;
      });

      this.lines = lines;
      this.offsetX = offsetX;
      this.offsetY = offsetY;
      this.lineSize = lineSize;
      this.start = start;
    }
```

### <a name="instance_renderFill"></a>renderFill
```javascript
function (canvas) {
      var context = canvas.context;
      var offsetX = this.offsetX;
      var offsetY = this.offsetY;
      var lineSize = this.lineSize;
      var start = this.start;
      this.lines.forEach(function(line, i) {
        context.fillText(line, offsetX, (start + i) * lineSize + offsetY);
      }, this);
    }
```

### <a name="instance_renderStroke"></a>renderStroke
```javascript
function (canvas) {
      var context = canvas.context;
      var offsetX = this.offsetX;
      var offsetY = this.offsetY;
      var lineSize = this.lineSize;
      var start = this.start;
      this.lines.forEach(function(line, i) {
        context.strokeText(line, offsetX, (start + i) * lineSize + offsetY);
      }, this);
    }
```

### <a name="instance_enableScroll"></a>enableScroll
```javascript
function () {
      //   this.setInteractive(true);
      //   var physical = phina.accessory.Physical();
      //   physical.attachTo(this);
      //   physical.friction = 0.8;
      //   var lastForce = 0;
      //   var lastMove = 0;
      //   this.on('pointstart', function(e){
      //     lastForce = physical.velocity.y;
      //     lastMove = 0;
      //     physical.force(0, 0);
      //   });
      //   this.on('pointmove', function(e){
      //     var p = e.pointer.deltaPosition;
      //     lastMove = p.y;
      //     this.scrollY += lastMove;
      //   });

      //   this.on('pointend', function(e){
      //     physical.force(0, lastForce + lastMove);
      //   });

      return this;
    }
```


