# phina.asset.Font

super class : [phina.asset.Asset](phina.asset.Asset.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)

* serverError : Boolean
* notFound : Boolean
* loadError : Boolean

## Methods

### Class methods


### Instance methods (own)

* init
* load
* setFontName
* getFontName

### Instance methods (inherited)

* isLoaded
* loadDummy
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
  function () {
        this.superInit();
        this.fontName = null;
      }
  ```
* load
  ```javascript
  function (path) {
        this.src = path;
  
        var reg = /(.*)(?:\.([^.]+$))/;
        var key = this.fontName || path.match(reg)[1].split('/').last;    //フォント名指定が無い場合はpathの拡張子前を使用
        var type = path.match(reg)[2];
        var format = "unknown";
        switch (type) {
          case "ttf":
            format = "truetype"; break;
          case "otf":
            format = "opentype"; break;
          case "woff":
            format = "woff"; break;
          case "woff2":
            format = "woff2"; break;
          default:
            console.warn("サポートしていないフォント形式です。(" + path + ")");
        }
        this.format = format;
        this.fontName = key;
  
        if (format !== "unknown") {
          var text = "@font-face { font-family: '{0}'; src: url({1}) format('{2}'); }".format(key, path, format);
          var e = document.querySelector("head");
          var fontFaceStyleElement = document.createElement("style");
          if (fontFaceStyleElement.innerText) {
            fontFaceStyleElement.innerText = text;
          } else {
            fontFaceStyleElement.textContent = text;
          }
          e.appendChild(fontFaceStyleElement);
        }
  
        return phina.util.Flow(this._load.bind(this));
      }
  ```
* setFontName
  ```javascript
  function (name) {
        if (this.loaded) {
          console.warn("フォント名はLoad前にのみ設定が出来ます(" + name + ")");
          return this;
        }
        this.fontName = name;
        
        return this;
      }
  ```
* getFontName
  ```javascript
  function () {
        return this.fontName;
      }
  ```

