# phina.util.Color

super class : none

## Properties

### Class properties


### Instance properties (own)

* r : Number
* g : Number
* b : Number
* a : Number

### Instance properties (inherited)


## Methods

### Class methods

* strToNum
* stringToNumber
* HSLtoRGB
* HSLAtoRGBA
* createStyleRGB
* createStyleRGBA
* createStyleHSL
* createStyleHSLA

### Instance methods (own)

* init
* set
* setFromNumber
* setFromArray
* setFromObject
* setFromString
* setSmart
* toStyleAsHex
* toStyleAsRGB
* toStyleAsRGBA
* toStyle

### Instance methods (inherited)


## Sources

* init
  ```javascript
  function (r, g, b, a) {
        this.set.apply(this, arguments);
      }
  ```
* set
  ```javascript
  function (r, g, b, a) {
        this.r = r;
        this.g = g;
        this.b = b;
        this.a = (a !== undefined) ? a : 1.0;
        return this;
      }
  ```
* setFromNumber
  ```javascript
  function (r, g, b, a) {
        this.r = r;
        this.g = g;
        this.b = b;
        this.a = (a !== undefined) ? a : 1.0;
        return this;
      }
  ```
* setFromArray
  ```javascript
  function (arr) {
        return this.set.apply(this, arr);
      }
  ```
* setFromObject
  ```javascript
  function (obj) {
        return this.set(obj.r, obj.g, obj.b, obj.a);
      }
  ```
* setFromString
  ```javascript
  function (str) {
        var color = phina.util.Color.stringToNumber(str);
        return this.set(color[0], color[1], color[2], color[3]);
      }
  ```
* setSmart
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
* toStyleAsHex
  ```javascript
  function () {
        return "#{0}{1}{2}".format(
          this.r.toString(16).padding(2, '0'),
          this.g.toString(16).padding(2, '0'),
          this.b.toString(16).padding(2, '0')
        );
      }
  ```
* toStyleAsRGB
  ```javascript
  function () {
        return "rgb({r},{g},{b})".format({
          r: ~~this.r,
          g: ~~this.g,
          b: ~~this.b
        });
      }
  ```
* toStyleAsRGBA
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
* toStyle
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

