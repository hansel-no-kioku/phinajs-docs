# phina.display.Shape

super class : [phina.display.PlainElement](phina.display.PlainElement.md)

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

* watchRenderProperty
* watchRenderProperties

### Instance methods (own)

* init
* calcCanvasWidth
* calcCanvasHeight
* calcCanvasSize
* isStrokable
* prerender
* postrender
* renderFill
* renderStroke
* render

### Instance methods (inherited)

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
* calcCanvasWidth
  ```javascript
  function () {
        return this.width + this.padding*2;
      }
  ```
* calcCanvasHeight
  ```javascript
  function () {
        return this.height + this.padding*2;
      }
  ```
* calcCanvasSize
  ```javascript
  function () {
        return {
          width: this.calcCanvasWidth(),
          height: this.calcCanvasHeight(),
        };
      }
  ```
* isStrokable
  ```javascript
  function () {
        return this.stroke && 0 < this.strokeWidth;
      }
  ```
* prerender
  ```javascript
  function (canvas) {
  
      }
  ```
* postrender
  ```javascript
  function (canvas) {
  
      }
  ```
* renderFill
  ```javascript
  function (canvas) {
        canvas.fill();
      }
  ```
* renderStroke
  ```javascript
  function (canvas) {
        canvas.stroke();
      }
  ```
* render
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

