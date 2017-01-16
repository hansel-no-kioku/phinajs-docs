# phina.graphics.Canvas

super class : none

## Properties

### Class properties


### Instance properties (own)

* domElement : Null
* canvas : Null
* context : Null

### Instance properties (inherited)


## Methods

### Class methods

* measureText
* createLinearGradient

### Instance methods (own)

* init
* setSize
* setSizeToScreen
* fitScreen
* clear
* clearColor
* beginPath
* closePath
* moveTo
* lineTo
* quadraticCurveTo
* bezierCurveTo
* fill
* stroke
* clip
* drawPoint
* line
* drawLine
* drawDashLine
* drawArrow
* lines
* strokeLines
* fillLines
* rect
* fillRect
* strokeRect
* roundRect
* fillRoundRect
* strokeRoundRect
* circle
* fillCircle
* strokeCircle
* arc
* fillArc
* strokeArc
* pie
* fillPie
* strokePie
* polygon
* fillPolygon
* strokePolygon
* star
* fillStar
* strokeStar
* heart
* fillHeart
* strokeHeart
* ellipse
* fillEllipse
* strokeEllipse
* drawImage
* setTransform
* resetTransform
* transformCenter
* translate
* rotate
* scale
* save
* restore
* saveAsImage

### Instance methods (inherited)


## Sources

* init
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
* setSize
  ```javascript
  function (width, height) {
        this.canvas.width   = width;
        this.canvas.height  = height;
        return this;
      }
  ```
* setSizeToScreen
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
* fitScreen
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
* clear
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
* clearColor
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
* beginPath
  ```javascript
  function () {
        this.context.beginPath();
        return this;
      }
  ```
* closePath
  ```javascript
  function () {
        this.context.closePath();
        return this;
      }
  ```
* moveTo
  ```javascript
  function (x, y) {
        this.context.moveTo(x, y);
        return this;
      }
  ```
* lineTo
  ```javascript
  function (x, y) {
        this.context.lineTo(x, y);
        return this;
      }
  ```
* quadraticCurveTo
  ```javascript
  function () {
        this.context.quadraticCurveTo.apply(this.context, arguments);
        return this;
      }
  ```
* bezierCurveTo
  ```javascript
  function () {
        this.context.bezierCurveTo.apply(this.context, arguments);
        return this;
      }
  ```
* fill
  ```javascript
  function () {
        this.context.fill();
        return this;
      }
  ```
* stroke
  ```javascript
  function () {
        this.context.stroke();
        return this;
      }
  ```
* clip
  ```javascript
  function () {
        this.context.clip();
        return this;
      }
  ```
* drawPoint
  ```javascript
  function (x, y) {
        return this.strokeRect(x, y, 1, 1);
      }
  ```
* line
  ```javascript
  function (x0, y0, x1, y1) {
        return this.moveTo(x0, y0).lineTo(x1, y1);
      }
  ```
* drawLine
  ```javascript
  function (x0, y0, x1, y1) {
        return this.beginPath().line(x0, y0, x1, y1).stroke();
      }
  ```
* drawDashLine
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
* drawArrow
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
* lines
  ```javascript
  function () {
        this.moveTo(arguments[0], arguments[1]);
        for (var i=1,len=arguments.length/2; i<len; ++i) {
          this.lineTo(arguments[i*2], arguments[i*2+1]);
        }
        return this;
      }
  ```
* strokeLines
  ```javascript
  function () {
        this.beginPath();
        this.lines.apply(this, arguments);
        this.stroke();
        return this;
      }
  ```
* fillLines
  ```javascript
  function () {
        this.beginPath();
        this.lines.apply(this, arguments);
        this.fill();
        return this;
      }
  ```
* rect
  ```javascript
  function (x, y, width, height) {
        this.context.rect.apply(this.context, arguments);
        return this;
      }
  ```
* fillRect
  ```javascript
  function () {
        this.context.fillRect.apply(this.context, arguments);
        return this;
      }
  ```
* strokeRect
  ```javascript
  function () {
        this.context.strokeRect.apply(this.context, arguments);
        return this;
      }
  ```
* roundRect
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
* fillRoundRect
  ```javascript
  function (x, y, width, height, radius) {
        return this.beginPath().roundRect(x, y, width, height, radius).fill();
      }
  ```
* strokeRoundRect
  ```javascript
  function (x, y, width, height, radius) {
        return this.beginPath().roundRect(x, y, width, height, radius).stroke();
      }
  ```
* circle
  ```javascript
  function (x, y, radius) {
        this.context.arc(x, y, radius, 0, Math.PI*2, false);
        return this;
      }
  ```
* fillCircle
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
* strokeCircle
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
* arc
  ```javascript
  function (x, y, radius, startAngle, endAngle, anticlockwise) {
        this.context.arc(x, y, radius, startAngle, endAngle, anticlockwise);
        return this;
      }
  ```
* fillArc
  ```javascript
  function (x, y, radius, startAngle, endAngle, anticlockwise) {
        return this.beginPath().arc(x, y, radius, startAngle, endAngle, anticlockwise).fill();
      }
  ```
* strokeArc
  ```javascript
  function (x, y, radius, startAngle, endAngle, anticlockwise) {
        return this.beginPath().arc(x, y, radius, startAngle, endAngle, anticlockwise).stroke();
      }
  ```
* pie
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
* fillPie
  ```javascript
  function (x, y, radius, startAngle, endAngle, anticlockwise) {
        return this.beginPath().pie(x, y, radius, startAngle, endAngle, anticlockwise).fill();
      }
  ```
* strokePie
  ```javascript
  function (x, y, radius, startAngle, endAngle, anticlockwise) {
        return this.beginPath().pie(x, y, radius, startAngle, endAngle, anticlockwise).stroke();
      }
  ```
* polygon
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
* fillPolygon
  ```javascript
  function (x, y, radius, sides, offsetAngle) {
        return this.beginPath().polygon(x, y, radius, sides, offsetAngle).fill();
      }
  ```
* strokePolygon
  ```javascript
  function (x, y, radius, sides, offsetAngle) {
        return this.beginPath().polygon(x, y, radius, sides, offsetAngle).stroke();
      }
  ```
* star
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
* fillStar
  ```javascript
  function (x, y, radius, sides, sideIndent, offsetAngle) {
        this.beginPath().star(x, y, radius, sides, sideIndent, offsetAngle).fill();
        return this;
      }
  ```
* strokeStar
  ```javascript
  function (x, y, radius, sides, sideIndent, offsetAngle) {
        this.beginPath().star(x, y, radius, sides, sideIndent, offsetAngle).stroke();
        return this;
      }
  ```
* heart
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
* fillHeart
  ```javascript
  function (x, y, radius, angle) {
        return this.beginPath().heart(x, y, radius, angle).fill();
      }
  ```
* strokeHeart
  ```javascript
  function (x, y, radius, angle) {
        return this.beginPath().heart(x, y, radius, angle).stroke();
      }
  ```
* ellipse
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
* fillEllipse
  ```javascript
  function (x, y, width, height) {
        return this.beginPath().ellipse(x, y, width, height).fill();
      }
  ```
* strokeEllipse
  ```javascript
  function (x, y, width, height) {
        return this.beginPath().ellipse(x, y, width, height).stroke();
      }
  ```
* drawImage
  ```javascript
  function () {
        this.context.drawImage.apply(this.context, arguments);
      }
  ```
* setTransform
  ```javascript
  function (m11, m12, m21, m22, dx, dy) {
        this.context.setTransform(m11, m12, m21, m22, dx, dy);
        return this;
      }
  ```
* resetTransform
  ```javascript
  function () {
        this.setTransform(1.0, 0.0, 0.0, 1.0, 0.0, 0.0);
        return this;
      }
  ```
* transformCenter
  ```javascript
  function () {
        this.context.setTransform(1, 0, 0, 1, this.width/2, this.height/2);
        return this;
      }
  ```
* translate
  ```javascript
  function (x, y) {
        this.context.translate(x, y);
        return this;
      }
  ```
* rotate
  ```javascript
  function (rotation) {
        this.context.rotate(rotation);
        return this;
      }
  ```
* scale
  ```javascript
  function (scaleX, scaleY) {
        this.context.scale(scaleX, scaleY);
        return this;
      }
  ```
* save
  ```javascript
  function () {
        this.context.save();
        return this;
      }
  ```
* restore
  ```javascript
  function () {
        this.context.restore();
        return this;
      }
  ```
* saveAsImage
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

