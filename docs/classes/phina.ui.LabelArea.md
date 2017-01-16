# phina.ui.LabelArea

super class : [phina.display.Label](phina.display.Label.md)

## Properties

### Class properties

* defaults : Object
* alignToOffsetMap : Object
* verticalAlignToOffsetMap : Object

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
* getOffsetY
* getOffsetX
* getTextWidthCache
* getLines
* prerender
* renderFill
* renderStroke
* enableScroll

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
        options = {}.$safe(options, LabelArea.defaults);
        this.superInit(options);
  
        this.verticalAlign = options.verticalAlign;
        this.scroll = options.scroll || phina.geom.Vector2();
        this.scrollX = options.scrollX;
        this.scrollY = options.scrollY;
      }
  ```
* calcCanvasWidth
  ```javascript
  function () {
        return this.width + this.padding * 2;
      }
  ```
* calcCanvasHeight
  ```javascript
  function () {
        return this.height + this.padding * 2;
      }
  ```
* getOffsetY
  ```javascript
  function () {
        if (typeof this.verticalAlign === 'number') {
          return this.verticalAlign;
        }
        return LabelArea.verticalAlignToOffsetMap[this.verticalAlign] || 0;
      }
  ```
* getOffsetX
  ```javascript
  function () {
        return LabelArea.alignToOffsetMap[this.align] || 0;
      }
  ```
* getTextWidthCache
  ```javascript
  function () {
        var cache = textWidthCache[this.font];
        return cache || (textWidthCache[this.font] = {});
      }
  ```
* getLines
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
* prerender
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
* renderFill
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
* renderStroke
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
* enableScroll
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

