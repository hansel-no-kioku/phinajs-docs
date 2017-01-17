[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.display.CanvasApp

super class : [phina.display.DomApp](phina.display.DomApp.md)

## Properties

### Class properties

* defaults : 
  * width : 640
  * height : 960
  * columns : 12
  * fit : true
  * append : true



### Instance properties (inherited)

* domElement : Unknown&ensp;&ensp;(from [phina.display.DomApp](phina.display.DomApp.md))
* awake : Unknown&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))

## Methods


### Instance methods (own)

* [init](#instance_init)
* [fitScreen](#instance_fitScreen)

### Instance methods (inherited)

* [run](phina.app.BaseApp.md#instance_run)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* [replaceScene](phina.app.BaseApp.md#instance_replaceScene)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* [pushScene](phina.app.BaseApp.md#instance_pushScene)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* [popScene](phina.app.BaseApp.md#instance_popScene)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* [start](phina.app.BaseApp.md#instance_start)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* [stop](phina.app.BaseApp.md#instance_stop)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* [enableStats](phina.app.BaseApp.md#instance_enableStats)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* [enableDatGUI](phina.app.BaseApp.md#instance_enableDatGUI)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* [on](phina.util.EventDispatcher.md#instance_on)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [off](phina.util.EventDispatcher.md#instance_off)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [fire](phina.util.EventDispatcher.md#instance_fire)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [flare](phina.util.EventDispatcher.md#instance_flare)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [one](phina.util.EventDispatcher.md#instance_one)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [has](phina.util.EventDispatcher.md#instance_has)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [clear](phina.util.EventDispatcher.md#instance_clear)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (options) {
      options = (options || {}).$safe(phina.display.CanvasApp.defaults);
      
      if (!options.query && !options.domElement) {
        options.domElement = document.createElement('canvas');
        if (options.append) {
          document.body.appendChild(options.domElement);
        }
      }
      this.superInit(options);


      this.gridX = phina.util.Grid({
        width: options.width,
        columns: options.columns,
      });
      this.gridY = phina.util.Grid({
        width: options.height,
        columns: options.columns,
      });

      this.canvas = phina.graphics.Canvas(this.domElement);
      this.canvas.setSize(options.width, options.height);

      this.backgroundColor = (options.backgroundColor !== undefined) ? options.backgroundColor : 'white';

      this.replaceScene(phina.display.DisplayScene({
        width: options.width,
        height: options.height,
      }));

      if (options.fit) {
        this.fitScreen();
      }

      if (options.pixelated) {
        // チラつき防止
        // https://drafts.csswg.org/css-images/#the-image-rendering
        this.domElement.style.imageRendering = 'pixelated';
      }

      // pushScene, popScene 対策
      this.on('push', function() {
        // onenter 対策で描画しておく
        this._draw();
      });
    }
```

### <a name="instance_fitScreen"></a>fitScreen
```javascript
function () {
      this.canvas.fitScreen();
    }
```


