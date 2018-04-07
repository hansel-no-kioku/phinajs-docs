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


### Instance properties (own)

* gridX : [phina.util.Grid](phina.util.Grid.md)
* gridY : [phina.util.Grid](phina.util.Grid.md)
* canvas : [phina.graphics.Canvas](phina.graphics.Canvas.md)
* backgroundColor : String

### Instance properties (inherited)

* domElement : Element&ensp;&ensp;(from [phina.display.DomApp](phina.display.DomApp.md))
* mouse : [phina.input.Mouse](phina.input.Mouse.md)&ensp;&ensp;(from [phina.display.DomApp](phina.display.DomApp.md))
* touch : [phina.input.Touch](phina.input.Touch.md)&ensp;&ensp;(from [phina.display.DomApp](phina.display.DomApp.md))
* touchList : [phina.input.TouchList](phina.input.TouchList.md)&ensp;&ensp;(from [phina.display.DomApp](phina.display.DomApp.md))
* keyboard : [phina.input.Keyboard](phina.input.Keyboard.md)&ensp;&ensp;(from [phina.display.DomApp](phina.display.DomApp.md))
* accelerometer : [phina.input.Accelerometer](phina.input.Accelerometer.md)&ensp;&ensp;(from [phina.display.DomApp](phina.display.DomApp.md))
* pointer : [phina.input.Touch](phina.input.Touch.md)&ensp;&ensp;(from [phina.display.DomApp](phina.display.DomApp.md))
* pointers : Array&ensp;&ensp;(from [phina.display.DomApp](phina.display.DomApp.md))
* updater : [phina.app.Updater](phina.app.Updater.md)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* interactive : [phina.app.Interactive](phina.app.Interactive.md)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* awake : Boolean&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* ticker : [phina.util.Ticker](phina.util.Ticker.md)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* fps : Number&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* frame : Number&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* currentScene : [phina.app.Scene](phina.app.Scene.md)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* rootScene : [phina.app.Scene](phina.app.Scene.md)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* deltaTime : Number&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* elapsedTime : Number&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* currentTime : Unknown&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* startTime : Unknown&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))

## Methods


### Instance methods (own)

* [init](#instance_init)
* [fitScreen](#instance_fitScreen)

### Instance methods (inherited)

* [run](phina.app.BaseApp.md#instance_run)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* [kill](phina.app.BaseApp.md#instance_kill)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
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
* [addEventListener](phina.util.EventDispatcher.md#instance_addEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [removeEventListener](phina.util.EventDispatcher.md#instance_removeEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [clearEventListener](phina.util.EventDispatcher.md#instance_clearEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [hasEventListener](phina.util.EventDispatcher.md#instance_hasEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [dispatchEvent](phina.util.EventDispatcher.md#instance_dispatchEvent)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [dispatchEventByType](phina.util.EventDispatcher.md#instance_dispatchEventByType)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))


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
        if (this.currentScene.canvas) {
          this._draw();
        }
      });
    }
```

### <a name="instance_fitScreen"></a>fitScreen
```javascript
function () {
      this.canvas.fitScreen();
    }
```


