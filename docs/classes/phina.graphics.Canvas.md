[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.graphics.Canvas

super class : none

## Properties


### Instance properties (own)

* canvas : Element
* domElement : Element
* context : CanvasRenderingContext2D
* width : Number
* height : Number
* fillStyle : String
* strokeStyle : Unknown
* globalAlpha : Unknown
* globalCompositeOperation : Unknown
* shadowBlur : Unknown
* shadowColor : Unknown
* shadowOffsetX : Unknown
* shadowOffsetY : Unknown
* lineCap : String
* lineJoin : String
* miterLimit : Unknown
* lineWidth : Unknown
* font : Unknown
* textAlign : Unknown
* textBaseline : Unknown
* imageSmoothingEnabled : Unknown


## Methods

### Class methods

* [measureText](#class_measureText)
* [createLinearGradient](#class_createLinearGradient)

### Instance methods (own)

* [init](#instance_init)
* [setSize](#instance_setSize)
* [setSizeToScreen](#instance_setSizeToScreen)
* [fitScreen](#instance_fitScreen)
* [clear](#instance_clear)
* [clearColor](#instance_clearColor)
* [beginPath](#instance_beginPath)
* [closePath](#instance_closePath)
* [moveTo](#instance_moveTo)
* [lineTo](#instance_lineTo)
* [quadraticCurveTo](#instance_quadraticCurveTo)
* [bezierCurveTo](#instance_bezierCurveTo)
* [fill](#instance_fill)
* [stroke](#instance_stroke)
* [clip](#instance_clip)
* [drawPoint](#instance_drawPoint)
* [line](#instance_line)
* [drawLine](#instance_drawLine)
* [drawDashLine](#instance_drawDashLine)
* [drawArrow](#instance_drawArrow)
* [lines](#instance_lines)
* [strokeLines](#instance_strokeLines)
* [fillLines](#instance_fillLines)
* [rect](#instance_rect)
* [fillRect](#instance_fillRect)
* [strokeRect](#instance_strokeRect)
* [roundRect](#instance_roundRect)
* [fillRoundRect](#instance_fillRoundRect)
* [strokeRoundRect](#instance_strokeRoundRect)
* [circle](#instance_circle)
* [fillCircle](#instance_fillCircle)
* [strokeCircle](#instance_strokeCircle)
* [arc](#instance_arc)
* [fillArc](#instance_fillArc)
* [strokeArc](#instance_strokeArc)
* [pie](#instance_pie)
* [fillPie](#instance_fillPie)
* [strokePie](#instance_strokePie)
* [polygon](#instance_polygon)
* [fillPolygon](#instance_fillPolygon)
* [strokePolygon](#instance_strokePolygon)
* [star](#instance_star)
* [fillStar](#instance_fillStar)
* [strokeStar](#instance_strokeStar)
* [heart](#instance_heart)
* [fillHeart](#instance_fillHeart)
* [strokeHeart](#instance_strokeHeart)
* [ellipse](#instance_ellipse)
* [fillEllipse](#instance_fillEllipse)
* [strokeEllipse](#instance_strokeEllipse)
* [drawImage](#instance_drawImage)
* [setTransform](#instance_setTransform)
* [resetTransform](#instance_resetTransform)
* [transformCenter](#instance_transformCenter)
* [translate](#instance_translate)
* [rotate](#instance_rotate)
* [scale](#instance_scale)
* [save](#instance_save)
* [restore](#instance_restore)
* [saveAsImage](#instance_saveAsImage)


## Source code of methods (class)

### <a name="class_measureText"></a>measureText
```javascript
function (font, text) {
        this._context.font = font;
        return this._context.measureText(text);
      }
```

### <a name="class_createLinearGradient"></a>createLinearGradient
```javascript
function () {
        return this._context.createLinearGradient.apply(this._context, arguments);
      }
```


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (canvas) {
      if (typeof canvas === 'string') {
        this.canvas = document.querySelector(canvas);
      }
      else {
        this.canvas = canvas || document.createElement('canvas');
      }

      this.domElement = this.canvas;
      this.context = this.canvas.getContext('2d');
      this.context.lineCap = 'round';
      this.context.lineJoin = 'round';
    }
```

### <a name="instance_setSize"></a>setSize
```javascript
function (width, height) {
      this.canvas.width   = width;
      this.canvas.height  = height;
      return this;
    }
```

### <a name="instance_setSizeToScreen"></a>setSizeToScreen
```javascript
function () {
      this.canvas.style.position  = "fixed";
      this.canvas.style.margin    = "0px";
      this.canvas.style.padding   = "0px";
      this.canvas.style.left      = "0px";
      this.canvas.style.top       = "0px";
      return this.setSize(window.innerWidth, window.innerHeight);
    }
```

### <a name="instance_fitScreen"></a>fitScreen
```javascript
function (isEver) {
      isEver = isEver === undefined ? true : isEver;

      var _fitFunc = function() {
        var e = this.domElement;
        var s = e.style;
        
        s.position = "absolute";
        s.margin = "auto";
        s.left = "0px";
        s.top  = "0px";
        s.bottom = "0px";
        s.right = "0px";

        var rateWidth = e.width/window.innerWidth;
        var rateHeight= e.height/window.innerHeight;
        var rate = e.height/e.width;
        
        if (rateWidth > rateHeight) {
          s.width  = Math.floor(innerWidth)+"px";
          s.height = Math.floor(innerWidth*rate)+"px";
        }
        else {
          s.width  = Math.floor(innerHeight/rate)+"px";
          s.height = Math.floor(innerHeight)+"px";
        }
      }.bind(this);
      
      // 一度実行しておく
      _fitFunc();

      // リサイズ時のリスナとして登録しておく
      if (isEver) {
        phina.global.addEventListener("resize", _fitFunc, false);
      }
    }
```

### <a name="instance_clear"></a>clear
```javascript
function (x, y, width, height) {
      x = x || 0;
      y = y || 0;
      width = width || this.width;
      height= height|| this.height;
      this.context.clearRect(x, y, width, height);
      return this;
    }
```

### <a name="instance_clearColor"></a>clearColor
```javascript
function (fillStyle, x, y, width, height) {
      x = x || 0;
      y = y || 0;
      width = width || this.width;
      height= height|| this.height;

      var context = this.context;

      context.save();
      context.setTransform(1.0, 0.0, 0.0, 1.0, 0.0, 0.0); // 行列初期化
      context.fillStyle = fillStyle;     // 塗りつぶしスタイルセット
      context.fillRect(x, y, width, height);
      context.restore();

      return this;
    }
```

### <a name="instance_beginPath"></a>beginPath
```javascript
function () {
      this.context.beginPath();
      return this;
    }
```

### <a name="instance_closePath"></a>closePath
```javascript
function () {
      this.context.closePath();
      return this;
    }
```

### <a name="instance_moveTo"></a>moveTo
```javascript
function (x, y) {
      this.context.moveTo(x, y);
      return this;
    }
```

### <a name="instance_lineTo"></a>lineTo
```javascript
function (x, y) {
      this.context.lineTo(x, y);
      return this;
    }
```

### <a name="instance_quadraticCurveTo"></a>quadraticCurveTo
```javascript
function () {
      this.context.quadraticCurveTo.apply(this.context, arguments);
      return this;
    }
```

### <a name="instance_bezierCurveTo"></a>bezierCurveTo
```javascript
function () {
      this.context.bezierCurveTo.apply(this.context, arguments);
      return this;
    }
```

### <a name="instance_fill"></a>fill
```javascript
function () {
      this.context.fill();
      return this;
    }
```

### <a name="instance_stroke"></a>stroke
```javascript
function () {
      this.context.stroke();
      return this;
    }
```

### <a name="instance_clip"></a>clip
```javascript
function () {
      this.context.clip();
      return this;
    }
```

### <a name="instance_drawPoint"></a>drawPoint
```javascript
function (x, y) {
      return this.strokeRect(x, y, 1, 1);
    }
```

### <a name="instance_line"></a>line
```javascript
function (x0, y0, x1, y1) {
      return this.moveTo(x0, y0).lineTo(x1, y1);
    }
```

### <a name="instance_drawLine"></a>drawLine
```javascript
function (x0, y0, x1, y1) {
      return this.beginPath().line(x0, y0, x1, y1).stroke();
    }
```

### <a name="instance_drawDashLine"></a>drawDashLine
```javascript
function (x0, y0, x1, y1, pattern) {
      var patternTable = null;
      if (typeof(pattern) == "string") {
        patternTable = pattern;
      }
      else {
        pattern = pattern || 0xf0f0;
        patternTable = pattern.toString(2);
      }
      patternTable = patternTable.padding(16, '1');
      
      var vx = x1-x0;
      var vy = y1-y0;
      var len = Math.sqrt(vx*vx + vy*vy);
      vx/=len; vy/=len;
      
      var x = x0;
      var y = y0;
      for (var i=0; i<len; ++i) {
        if (patternTable[i%16] == '1') {
          this.drawPoint(x, y);
          // this.fillRect(x, y, this.context.lineWidth, this.context.lineWidth);
        }
        x += vx;
        y += vy;
      }
      
      return this;
    }
```

### <a name="instance_drawArrow"></a>drawArrow
```javascript
function (x0, y0, x1, y1, arrowRadius) {
      var vx = x1-x0;
      var vy = y1-y0;
      var angle = Math.atan2(vy, vx)*180/Math.PI;
      
      this.drawLine(x0, y0, x1, y1);
      this.fillPolygon(x1, y1, arrowRadius || 5, 3, angle);
      
      return this;
    }
```

### <a name="instance_lines"></a>lines
```javascript
function () {
      this.moveTo(arguments[0], arguments[1]);
      for (var i=1,len=arguments.length/2; i<len; ++i) {
        this.lineTo(arguments[i*2], arguments[i*2+1]);
      }
      return this;
    }
```

### <a name="instance_strokeLines"></a>strokeLines
```javascript
function () {
      this.beginPath();
      this.lines.apply(this, arguments);
      this.stroke();
      return this;
    }
```

### <a name="instance_fillLines"></a>fillLines
```javascript
function () {
      this.beginPath();
      this.lines.apply(this, arguments);
      this.fill();
      return this;
    }
```

### <a name="instance_rect"></a>rect
```javascript
function (x, y, width, height) {
      this.context.rect.apply(this.context, arguments);
      return this;
    }
```

### <a name="instance_fillRect"></a>fillRect
```javascript
function () {
      this.context.fillRect.apply(this.context, arguments);
      return this;
    }
```

### <a name="instance_strokeRect"></a>strokeRect
```javascript
function () {
      this.context.strokeRect.apply(this.context, arguments);
      return this;
    }
```

### <a name="instance_roundRect"></a>roundRect
```javascript
function (x, y, width, height, radius) {
      var l = x + radius;
      var r = x + width - radius;
      var t = y + radius;
      var b = y + height - radius;
      
      /*
      var ctx = this.context;
      ctx.moveTo(l, y);
      ctx.lineTo(r, y);
      ctx.quadraticCurveTo(x+width, y, x+width, t);
      ctx.lineTo(x+width, b);
      ctx.quadraticCurveTo(x+width, y+height, r, y+height);
      ctx.lineTo(l, y+height);
      ctx.quadraticCurveTo(x, y+height, x, b);
      ctx.lineTo(x, t);
      ctx.quadraticCurveTo(x, y, l, y);
      /**/
      
      this.context.arc(l, t, radius,     -Math.PI, -Math.PI*0.5, false);  // 左上
      this.context.arc(r, t, radius, -Math.PI*0.5,            0, false);  // 右上
      this.context.arc(r, b, radius,            0,  Math.PI*0.5, false);  // 右下
      this.context.arc(l, b, radius,  Math.PI*0.5,      Math.PI, false);  // 左下
      this.closePath();
      
      return this;
    }
```

### <a name="instance_fillRoundRect"></a>fillRoundRect
```javascript
function (x, y, width, height, radius) {
      return this.beginPath().roundRect(x, y, width, height, radius).fill();
    }
```

### <a name="instance_strokeRoundRect"></a>strokeRoundRect
```javascript
function (x, y, width, height, radius) {
      return this.beginPath().roundRect(x, y, width, height, radius).stroke();
    }
```

### <a name="instance_circle"></a>circle
```javascript
function (x, y, radius) {
      this.context.arc(x, y, radius, 0, Math.PI*2, false);
      return this;
    }
```

### <a name="instance_fillCircle"></a>fillCircle
```javascript
function (x, y, radius) {
      var c = this.context;
      c.beginPath();
      c.arc(x, y, radius, 0, Math.PI*2, false);
      c.closePath();
      c.fill();
      return this;
    }
```

### <a name="instance_strokeCircle"></a>strokeCircle
```javascript
function (x, y, radius) {
      var c = this.context;
      c.beginPath();
      c.arc(x, y, radius, 0, Math.PI*2, false);
      c.closePath();
      c.stroke();
      return this;
    }
```

### <a name="instance_arc"></a>arc
```javascript
function (x, y, radius, startAngle, endAngle, anticlockwise) {
      this.context.arc(x, y, radius, startAngle, endAngle, anticlockwise);
      return this;
    }
```

### <a name="instance_fillArc"></a>fillArc
```javascript
function (x, y, radius, startAngle, endAngle, anticlockwise) {
      return this.beginPath().arc(x, y, radius, startAngle, endAngle, anticlockwise).fill();
    }
```

### <a name="instance_strokeArc"></a>strokeArc
```javascript
function (x, y, radius, startAngle, endAngle, anticlockwise) {
      return this.beginPath().arc(x, y, radius, startAngle, endAngle, anticlockwise).stroke();
    }
```

### <a name="instance_pie"></a>pie
```javascript
function (x, y, radius, startAngle, endAngle, anticlockwise) {
      var context = this.context;
      context.beginPath();
      context.moveTo(0, 0);
      context.arc(x, y, radius, startAngle, endAngle, anticlockwise);
      context.closePath();
      return this;
    }
```

### <a name="instance_fillPie"></a>fillPie
```javascript
function (x, y, radius, startAngle, endAngle, anticlockwise) {
      return this.beginPath().pie(x, y, radius, startAngle, endAngle, anticlockwise).fill();
    }
```

### <a name="instance_strokePie"></a>strokePie
```javascript
function (x, y, radius, startAngle, endAngle, anticlockwise) {
      return this.beginPath().pie(x, y, radius, startAngle, endAngle, anticlockwise).stroke();
    }
```

### <a name="instance_polygon"></a>polygon
```javascript
function (x, y, size, sides, offsetAngle) {
      var radDiv = (Math.PI*2)/sides;
      var radOffset = (offsetAngle!==undefined) ? offsetAngle*Math.PI/180 : -Math.PI/2;
      
      this.moveTo(x + Math.cos(radOffset)*size, y + Math.sin(radOffset)*size);
      for (var i=1; i<sides; ++i) {
        var rad = radDiv*i+radOffset;
        this.lineTo(
          x + Math.cos(rad)*size,
          y + Math.sin(rad)*size
        );
      }
      this.closePath();
      return this;
    }
```

### <a name="instance_fillPolygon"></a>fillPolygon
```javascript
function (x, y, radius, sides, offsetAngle) {
      return this.beginPath().polygon(x, y, radius, sides, offsetAngle).fill();
    }
```

### <a name="instance_strokePolygon"></a>strokePolygon
```javascript
function (x, y, radius, sides, offsetAngle) {
      return this.beginPath().polygon(x, y, radius, sides, offsetAngle).stroke();
    }
```

### <a name="instance_star"></a>star
```javascript
function (x, y, radius, sides, sideIndent, offsetAngle) {
      var x = x || 0;
      var y = y || 0;
      var radius = radius || 64;
      var sides = sides || 5;
      var sideIndentRadius = radius * (sideIndent || 0.38);
      var radOffset = (offsetAngle) ? offsetAngle*Math.PI/180 : -Math.PI/2;
      var radDiv = (Math.PI*2)/sides/2;

      this.moveTo(
        x + Math.cos(radOffset)*radius,
        y + Math.sin(radOffset)*radius
      );
      for (var i=1; i<sides*2; ++i) {
        var rad = radDiv*i + radOffset;
        var len = (i%2) ? sideIndentRadius : radius;
        this.lineTo(
          x + Math.cos(rad)*len,
          y + Math.sin(rad)*len
        );
      }
      this.closePath();

      return this;
    }
```

### <a name="instance_fillStar"></a>fillStar
```javascript
function (x, y, radius, sides, sideIndent, offsetAngle) {
      this.beginPath().star(x, y, radius, sides, sideIndent, offsetAngle).fill();
      return this;
    }
```

### <a name="instance_strokeStar"></a>strokeStar
```javascript
function (x, y, radius, sides, sideIndent, offsetAngle) {
      this.beginPath().star(x, y, radius, sides, sideIndent, offsetAngle).stroke();
      return this;
    }
```

### <a name="instance_heart"></a>heart
```javascript
function (x, y, radius, angle) {
      var half_radius = radius*0.5;
      var rad = (angle === undefined) ? Math.PI/4 : Math.degToRad(angle);

      // 半径 half_radius の角度 angle 上の点との接線を求める
      var p = Math.cos(rad)*half_radius;
      var q = Math.sin(rad)*half_radius;

      // 円の接線の方程式 px + qy = r^2 より y = (r^2-px)/q
      var x2 = -half_radius;
      var y2 = (half_radius*half_radius-p*x2)/q;

      // 中心位置調整
      var height = y2 + half_radius;
      var offsetY = half_radius-height/2;

      // パスをセット
      this.moveTo(0+x, y2+y+offsetY);

      this.arc(-half_radius+x, 0+y+offsetY, half_radius, Math.PI-rad, Math.PI*2);
      this.arc(half_radius+x, 0+y+offsetY, half_radius, Math.PI, rad);
      this.closePath();

      return this;
    }
```

### <a name="instance_fillHeart"></a>fillHeart
```javascript
function (x, y, radius, angle) {
      return this.beginPath().heart(x, y, radius, angle).fill();
    }
```

### <a name="instance_strokeHeart"></a>strokeHeart
```javascript
function (x, y, radius, angle) {
      return this.beginPath().heart(x, y, radius, angle).stroke();
    }
```

### <a name="instance_ellipse"></a>ellipse
```javascript
function (x, y, w, h) {
      var ctx = this.context;
      var kappa = 0.5522848;

      var ox = (w / 2) * kappa; // control point offset horizontal
      var oy = (h / 2) * kappa; // control point offset vertical
      var xe = x + w;           // x-end
      var ye = y + h;           // y-end
      var xm = x + w / 2;       // x-middle
      var ym = y + h / 2;       // y-middle

      ctx.moveTo(x, ym);
      ctx.bezierCurveTo(x, ym - oy, xm - ox, y, xm, y);
      ctx.bezierCurveTo(xm + ox, y, xe, ym - oy, xe, ym);
      ctx.bezierCurveTo(xe, ym + oy, xm + ox, ye, xm, ye);
      ctx.bezierCurveTo(xm - ox, ye, x, ym + oy, x, ym);
      // ctx.closePath();

      return this;
    }
```

### <a name="instance_fillEllipse"></a>fillEllipse
```javascript
function (x, y, width, height) {
      return this.beginPath().ellipse(x, y, width, height).fill();
    }
```

### <a name="instance_strokeEllipse"></a>strokeEllipse
```javascript
function (x, y, width, height) {
      return this.beginPath().ellipse(x, y, width, height).stroke();
    }
```

### <a name="instance_drawImage"></a>drawImage
```javascript
function () {
      this.context.drawImage.apply(this.context, arguments);
    }
```

### <a name="instance_setTransform"></a>setTransform
```javascript
function (m11, m12, m21, m22, dx, dy) {
      this.context.setTransform(m11, m12, m21, m22, dx, dy);
      return this;
    }
```

### <a name="instance_resetTransform"></a>resetTransform
```javascript
function () {
      this.setTransform(1.0, 0.0, 0.0, 1.0, 0.0, 0.0);
      return this;
    }
```

### <a name="instance_transformCenter"></a>transformCenter
```javascript
function () {
      this.context.setTransform(1, 0, 0, 1, this.width/2, this.height/2);
      return this;
    }
```

### <a name="instance_translate"></a>translate
```javascript
function (x, y) {
      this.context.translate(x, y);
      return this;
    }
```

### <a name="instance_rotate"></a>rotate
```javascript
function (rotation) {
      this.context.rotate(rotation);
      return this;
    }
```

### <a name="instance_scale"></a>scale
```javascript
function (scaleX, scaleY) {
      this.context.scale(scaleX, scaleY);
      return this;
    }
```

### <a name="instance_save"></a>save
```javascript
function () {
      this.context.save();
      return this;
    }
```

### <a name="instance_restore"></a>restore
```javascript
function () {
      this.context.restore();
      return this;
    }
```

### <a name="instance_saveAsImage"></a>saveAsImage
```javascript
function (mime_type) {
      mime_type = mime_type || "image/png";
      var data_url = this.canvas.toDataURL(mime_type);
      // data_url = data_url.replace(mime_type, "image/octet-stream");
      window.open(data_url, "save");
      
      // toDataURL を使えば下記のようなツールが作れるかも!!
      // TODO: プログラムで絵をかいて保存できるツール
    }
```


