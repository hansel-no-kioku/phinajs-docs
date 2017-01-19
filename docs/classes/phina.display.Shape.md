[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.display.Shape

super class : [phina.display.PlainElement](phina.display.PlainElement.md)

## Properties


### Instance properties (own)

* width : Number
* height : Number
* radius : Number
* padding : Number
* backgroundColor : String
* fill : String
* stroke : String
* strokeWidth : Number
* shadow : Boolean
* shadowBlur : Number

### Instance properties (inherited)

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

### Class methods

* [watchRenderProperty](#class_watchRenderProperty)
* [watchRenderProperties](#class_watchRenderProperties)

### Instance methods (own)

* [init](#instance_init)
* [calcCanvasWidth](#instance_calcCanvasWidth)
* [calcCanvasHeight](#instance_calcCanvasHeight)
* [calcCanvasSize](#instance_calcCanvasSize)
* [isStrokable](#instance_isStrokable)
* [prerender](#instance_prerender)
* [postrender](#instance_postrender)
* [renderFill](#instance_renderFill)
* [renderStroke](#instance_renderStroke)
* [render](#instance_render)

### Instance methods (inherited)

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

## Source code of methods (class)

### <a name="class_watchRenderProperty"></a>watchRenderProperty
```javascript
function (key) {
        this.prototype.$watch(key, function(newVal, oldVal) {
          if (newVal !== oldVal) {
            this._dirtyDraw = true;
          }
        });
      }
```

### <a name="class_watchRenderProperties"></a>watchRenderProperties
```javascript
function (keys) {
        var watchRenderProperty = this.watchRenderProperty || Shape.watchRenderProperty;
        keys.each(function(key) {
          watchRenderProperty.call(this, key);
        }, this);
      }
```


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (options) {
      options = ({}).$safe(options, {
        width: 64,
        height: 64,
        padding: 8,

        backgroundColor: '#aaa',
        fill: '#00a',
        stroke: '#aaa',
        strokeWidth: 4,

        shadow: false,
        shadowBlur: 4,
      });
      this.superInit(options);

      this.padding = options.padding;

      this.backgroundColor = options.backgroundColor;
      this.fill = options.fill;
      this.stroke = options.stroke;
      this.strokeWidth = options.strokeWidth;

      this.shadow = options.shadow;
      this.shadowBlur = options.shadowBlur;

      this.watchDraw = true;
      this._dirtyDraw = true;

      this.on('enterframe', function() {
        // render
        if (this.watchDraw && this._dirtyDraw === true) {
          this.render(this.canvas);
          this._dirtyDraw = false;
        }
      });
    }
```

### <a name="instance_calcCanvasWidth"></a>calcCanvasWidth
```javascript
function () {
      return this.width + this.padding*2;
    }
```

### <a name="instance_calcCanvasHeight"></a>calcCanvasHeight
```javascript
function () {
      return this.height + this.padding*2;
    }
```

### <a name="instance_calcCanvasSize"></a>calcCanvasSize
```javascript
function () {
      return {
        width: this.calcCanvasWidth(),
        height: this.calcCanvasHeight(),
      };
    }
```

### <a name="instance_isStrokable"></a>isStrokable
```javascript
function () {
      return this.stroke && 0 < this.strokeWidth;
    }
```

### <a name="instance_prerender"></a>prerender
```javascript
function (canvas) {

    }
```

### <a name="instance_postrender"></a>postrender
```javascript
function (canvas) {

    }
```

### <a name="instance_renderFill"></a>renderFill
```javascript
function (canvas) {
      canvas.fill();
    }
```

### <a name="instance_renderStroke"></a>renderStroke
```javascript
function (canvas) {
      canvas.stroke();
    }
```

### <a name="instance_render"></a>render
```javascript
function (canvas) {
      var context = canvas.context;
      // リサイズ
      var size = this.calcCanvasSize();
      canvas.setSize(size.width, size.height);
      // クリアカラー
      canvas.clearColor(this.backgroundColor);
      // 中心に座標を移動
      canvas.transformCenter();

      // 描画前処理
      this.prerender(this.canvas);

      // ストローク描画
      if (this.isStrokable()) {
        context.strokeStyle = this.stroke;
        context.lineWidth = this.strokeWidth;
        context.lineJoin = "round";
        context.shadowBlur = 0;
        this.renderStroke(canvas);
      }

      // 塗りつぶし描画
      if (this.fill) {
        context.fillStyle = this.fill;

        // shadow の on/off
        if (this.shadow) {
          context.shadowColor = this.shadow;
          context.shadowBlur = this.shadowBlur;
        }
        else {
          context.shadowBlur = 0;
        }

        this.renderFill(canvas);
      }

      // 描画後処理
      this.postrender(this.canvas);

      return this;
    }
```


