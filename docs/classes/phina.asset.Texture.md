[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.asset.Texture

super class : [phina.asset.Asset](phina.asset.Asset.md)

## Properties



### Instance properties (inherited)

* loaded : Boolean&ensp;&ensp;(from [phina.asset.Asset](phina.asset.Asset.md))
* serverError : Boolean&ensp;&ensp;(from [phina.asset.Asset](phina.asset.Asset.md))
* notFound : Boolean&ensp;&ensp;(from [phina.asset.Asset](phina.asset.Asset.md))
* loadError : Boolean&ensp;&ensp;(from [phina.asset.Asset](phina.asset.Asset.md))

## Methods


### Instance methods (own)

* [init](#instance_init)
* [clone](#instance_clone)
* [transmit](#instance_transmit)
* [filter](#instance_filter)

### Instance methods (inherited)

* [load](phina.asset.Asset.md#instance_load)&ensp;&ensp;(from [phina.asset.Asset](phina.asset.Asset.md))
* [isLoaded](phina.asset.Asset.md#instance_isLoaded)&ensp;&ensp;(from [phina.asset.Asset](phina.asset.Asset.md))
* [loadDummy](phina.asset.Asset.md#instance_loadDummy)&ensp;&ensp;(from [phina.asset.Asset](phina.asset.Asset.md))
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
function () {
      this.superInit();
    }
```

### <a name="instance_clone"></a>clone
```javascript
function () {
      var image = this.domElement;
      var canvas = phina.graphics.Canvas().setSize(image.width, image.height);
      var t = phina.asset.Texture();
      canvas.context.drawImage(image, 0, 0);
      t.domElement = canvas.domElement;
      return t;
    }
```

### <a name="instance_transmit"></a>transmit
```javascript
function (color) {
      // imagaオブジェクトをゲット
      var image = this.domElement;
      // 新規canvas作成
      var canvas = phina.graphics.Canvas().setSize(image.width, image.height);
      // 新規canvasに描画
      canvas.context.drawImage(image, 0, 0);
      // canvas全体のイメージデータ配列をゲット
      var imageData = canvas.context.getImageData(0, 0, canvas.width, canvas.height);
      var data = imageData.data;
      // 透過色の指定がなければ左上のrgb値を抽出
      var r = (color !== undefined) ? color.r : data[0];
      var g = (color !== undefined) ? color.g : data[1];
      var b = (color !== undefined) ? color.b : data[2];
      // 配列を4要素目から4つ飛び（アルファ値）でループ
      (3).step(data.length, 4, function(i) {
        // rgb値を逆算でゲットし、左上のrgbと比較
        if (data[i - 3] === r && data[i - 2] === g && data[i - 1] === b) {
          // 一致した場合はアルファ値を書き換える
          data[i] = 0;
        }
      });
      // 書き換えたイメージデータをcanvasに戻す
      canvas.context.putImageData(imageData, 0, 0);

      this.domElement = canvas.domElement;
    }
```

### <a name="instance_filter"></a>filter
```javascript
function (filters) {
      if (!filters) {
        return this;
      }
      if (!Array.isArray(filters)) {
        filters = [filters];
      }
      var image = this.domElement;
      var w = image.width;
      var h = image.height;
      var canvas = phina.graphics.Canvas().setSize(w, h);
      var imageData = null;

      canvas.context.drawImage(image, 0, 0);
      imageData = canvas.context.getImageData(0, 0, w, h);
      filters.forEach( function (fn) {
        if (typeof fn == 'function') {
          h.times( function (y) {
            w.times( function (x) {
              var i = (y * w + x) * 4;
              var pixel = imageData.data.slice(i, i + 4);
              fn(pixel, i, x, y, imageData);
            });
          });
        }
      });
      canvas.context.putImageData(imageData, 0, 0);
      this.domElement = canvas.domElement;
      return this;
    }
```


