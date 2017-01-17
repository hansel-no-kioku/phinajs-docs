[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.util.Color

super class : none

## Properties

### Class properties

* COLOR_LIST : 
  * black : [0,0,0]
  * silver : [192,192,192]
  * gray : [128,128,128]
  * white : [255,255,255]
  * maroon : [128,0,0]
  * red : [255,0,0]
  * purple : [128,0,128]
  * fuchsia : [255,0,255]
  * green : [0,128,0]
  * lime : [0,255,0]
  * olive : [128,128,0]
  * yellow : [255,255,0]
  * navy : [0,0,128]
  * blue : [0,0,255]
  * teal : [0,128,128]
  * aqua : [0,255,255]


### Instance properties (own)

* r : Number
* g : Number
* b : Number
* a : Number


## Methods

### Class methods

* [strToNum](#class_strToNum)
* [stringToNumber](#class_stringToNumber)
* [HSLtoRGB](#class_HSLtoRGB)
* [HSLAtoRGBA](#class_HSLAtoRGBA)
* [createStyleRGB](#class_createStyleRGB)
* [createStyleRGBA](#class_createStyleRGBA)
* [createStyleHSL](#class_createStyleHSL)
* [createStyleHSLA](#class_createStyleHSLA)

### Instance methods (own)

* [init](#instance_init)
* [set](#instance_set)
* [setFromNumber](#instance_setFromNumber)
* [setFromArray](#instance_setFromArray)
* [setFromObject](#instance_setFromObject)
* [setFromString](#instance_setFromString)
* [setSmart](#instance_setSmart)
* [toStyleAsHex](#instance_toStyleAsHex)
* [toStyleAsRGB](#instance_toStyleAsRGB)
* [toStyleAsRGBA](#instance_toStyleAsRGBA)
* [toStyle](#instance_toStyle)


## Source code of methods (class)

### <a name="class_strToNum"></a>strToNum
```javascript
function (str) {
        return this.stringToNumber(str);
      }
```

### <a name="class_stringToNumber"></a>stringToNumber
```javascript
function (str) {
        var value = null;
        var type = null;

        if (str[0] === '#') {
          type = (str.length == 4) ? "hex111" : "hex222";
        } else if (str[0] === 'r' && str[1] === 'g' && str[2] === 'b') {
          type = (str[3] == 'a') ? "rgba" : "rgb";
        } else if (str[0] === 'h' && str[1] === 's' && str[2] === 'l') {
          type = (str[3] == 'a') ? "hsla" : "hsl";
        }

        if (type) {
          var match_set = MATCH_SET_LIST[type];
          var m = str.match(match_set.reg);
          value = match_set.exec(m);
        } else if (phina.util.Color.COLOR_LIST[str]) {
          value = phina.util.Color.COLOR_LIST[str];
        }

        return value;
      }
```

### <a name="class_HSLtoRGB"></a>HSLtoRGB
```javascript
function (h, s, l) {
        var r, g, b;

        h %= 360;
        h += 360;
        h %= 360;
        s *= 0.01;
        l *= 0.01;

        if (s === 0) {
          var l = Math.round(l * 255);
          return [l, l, l];
        }
        var m2 = (l < 0.5) ? l * (1 + s) : l + s - l * s;
        var m1 = l * 2 - m2;

        // red
        var temp = (h + 120) % 360;
        if (temp < 60) {
          r = m1 + (m2 - m1) * temp / 60;
        } else if (temp < 180) {
          r = m2;
        } else {
          r = m1;
        }

        // green
        temp = h;
        if (temp < 60) {
          g = m1 + (m2 - m1) * temp / 60;
        } else if (temp < 180) {
          g = m2;
        } else if (temp < 240) {
          g = m1 + (m2 - m1) * (240 - temp) / 60;
        } else {
          g = m1;
        }

        // blue
        temp = ((h - 120) + 360) % 360;
        if (temp < 60) {
          b = m1 + (m2 - m1) * temp / 60;
        } else if (temp < 180) {
          b = m2;
        } else if (temp < 240) {
          b = m1 + (m2 - m1) * (240 - temp) / 60;
        } else {
          b = m1;
        }

        return [
          parseInt(r * 255),
          parseInt(g * 255),
          parseInt(b * 255)
        ];
      }
```

### <a name="class_HSLAtoRGBA"></a>HSLAtoRGBA
```javascript
function (h, s, l, a) {
        var temp = phina.util.Color.HSLtoRGB(h, s, l);
        temp[3] = a;
        return temp;
      }
```

### <a name="class_createStyleRGB"></a>createStyleRGB
```javascript
function (r, g, b) {
        return "rgba(" + r + "," + g + "," + b + ")";
      }
```

### <a name="class_createStyleRGBA"></a>createStyleRGBA
```javascript
function (r, g, b, a) {
        return "rgba(" + r + "," + g + "," + b + "," + a + ")";
      }
```

### <a name="class_createStyleHSL"></a>createStyleHSL
```javascript
function (h, s, l) {
        return "hsl(" + h + "," + s + "%," + l + "%)";
      }
```

### <a name="class_createStyleHSLA"></a>createStyleHSLA
```javascript
function (h, s, l, a) {
        return "hsla(" + h + "," + s + "%," + l + "%," + a + ")";
      }
```


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (r, g, b, a) {
      this.set.apply(this, arguments);
    }
```

### <a name="instance_set"></a>set
```javascript
function (r, g, b, a) {
      this.r = r;
      this.g = g;
      this.b = b;
      this.a = (a !== undefined) ? a : 1.0;
      return this;
    }
```

### <a name="instance_setFromNumber"></a>setFromNumber
```javascript
function (r, g, b, a) {
      this.r = r;
      this.g = g;
      this.b = b;
      this.a = (a !== undefined) ? a : 1.0;
      return this;
    }
```

### <a name="instance_setFromArray"></a>setFromArray
```javascript
function (arr) {
      return this.set.apply(this, arr);
    }
```

### <a name="instance_setFromObject"></a>setFromObject
```javascript
function (obj) {
      return this.set(obj.r, obj.g, obj.b, obj.a);
    }
```

### <a name="instance_setFromString"></a>setFromString
```javascript
function (str) {
      var color = phina.util.Color.stringToNumber(str);
      return this.set(color[0], color[1], color[2], color[3]);
    }
```

### <a name="instance_setSmart"></a>setSmart
```javascript
function () {
      var arg = arguments[0];
      if (arguments.length >= 3) {
        this.set(arguments.r, arguments.g, arguments.b, arguments.a);
      } else if (arg instanceof Array) {
        this.setFromArray(arg);
      } else if (arg instanceof Object) {
        this.setFromObject(arg);
      } else if (typeof(arg) == "string") {
        this.setFromString(arg);
      }
      return this;
    }
```

### <a name="instance_toStyleAsHex"></a>toStyleAsHex
```javascript
function () {
      return "#{0}{1}{2}".format(
        this.r.toString(16).padding(2, '0'),
        this.g.toString(16).padding(2, '0'),
        this.b.toString(16).padding(2, '0')
      );
    }
```

### <a name="instance_toStyleAsRGB"></a>toStyleAsRGB
```javascript
function () {
      return "rgb({r},{g},{b})".format({
        r: ~~this.r,
        g: ~~this.g,
        b: ~~this.b
      });
    }
```

### <a name="instance_toStyleAsRGBA"></a>toStyleAsRGBA
```javascript
function () {
      return "rgba({r},{g},{b},{a})".format({
        r: ~~this.r,
        g: ~~this.g,
        b: ~~this.b,
        a: this.a
      });
    }
```

### <a name="instance_toStyle"></a>toStyle
```javascript
function () {
      return "rgba({r},{g},{b},{a})".format({
        r: ~~this.r,
        g: ~~this.g,
        b: ~~this.b,
        a: this.a
      });
    }
```


