[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.app.BaseApp

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties


### Instance properties (own)

* updater : [phina.app.Updater](phina.app.Updater.md)
* interactive : [phina.app.Interactive](phina.app.Interactive.md)
* awake : Boolean
* ticker : [phina.util.Ticker](phina.util.Ticker.md)
* fps : Number
* frame : Number
* currentScene : [phina.app.Scene](phina.app.Scene.md)
* rootScene : [phina.app.Scene](phina.app.Scene.md)
* deltaTime : Number
* elapsedTime : Number
* currentTime : Unknown
* startTime : Unknown


## Methods


### Instance methods (own)

* [init](#instance_init)
* [run](#instance_run)
* [kill](#instance_kill)
* [replaceScene](#instance_replaceScene)
* [pushScene](#instance_pushScene)
* [popScene](#instance_popScene)
* [start](#instance_start)
* [stop](#instance_stop)
* [enableStats](#instance_enableStats)
* [enableDatGUI](#instance_enableDatGUI)

### Instance methods (inherited)

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
      this._scenes = [phina.app.Scene()];
      this._sceneIndex = 0;

      this.updater = phina.app.Updater(this);
      this.interactive = phina.app.Interactive(this);

      this.awake = true;
      this.ticker = phina.util.Ticker();
    }
```

### <a name="instance_run"></a>run
```javascript
function () {
      var self = this;
      this._loopCaller = function() {
        self._loop();
      };
      this.ticker.tick(this._loopCaller);

      this.ticker.start();

      return this;
    }
```

### <a name="instance_kill"></a>kill
```javascript
function () {
      this.ticker.stop();
      this.ticker.untick(this._loopCaller);
      return this;
    }
```

### <a name="instance_replaceScene"></a>replaceScene
```javascript
function (scene) {
      this.flare('replace');
      this.flare('changescene');

      var e = null;
      if (this.currentScene) {
        this.currentScene.app = null;
      }
      this.currentScene = scene;
      this.currentScene.app = this;
      this.currentScene.flare('enter', {
        app: this,
      });

      return this;
    }
```

### <a name="instance_pushScene"></a>pushScene
```javascript
function (scene) {
      this.flare('push');
      this.flare('changescene');

      this.currentScene.flare('pause', {
        app: this,
      });
      
      this._scenes.push(scene);
      ++this._sceneIndex;

      this.flare('pushed');
      
      scene.app = this;
      scene.flare('enter', {
        app: this,
      });

      return this;
    }
```

### <a name="instance_popScene"></a>popScene
```javascript
function () {
      this.flare('pop');
      this.flare('changescene');

      var scene = this._scenes.pop();
      --this._sceneIndex;

      scene.flare('exit', {
        app: this,
      });
      scene.app = null;

      this.flare('poped');
      
      // 
      this.currentScene.flare('resume', {
        app: this,
        prevScene: scene,
      });
      
      return scene;
    }
```

### <a name="instance_start"></a>start
```javascript
function () {
      this.awake = true;

      return this;
    }
```

### <a name="instance_stop"></a>stop
```javascript
function () {
      this.awake = false;

      return this;
    }
```

### <a name="instance_enableStats"></a>enableStats
```javascript
function () {
      if (phina.global.Stats) {
        this.stats = new Stats();
        document.body.appendChild(this.stats.domElement);
      }
      else {
        // console.warn("not defined stats.");
        var STATS_URL = 'https://cdnjs.cloudflare.com/ajax/libs/stats.js/r14/Stats.js';
        var script = document.createElement('script');
        script.src = STATS_URL;
        document.body.appendChild(script);
        script.onload = function() {
          this.enableStats();
        }.bind(this);
      }
      return this;
    }
```

### <a name="instance_enableDatGUI"></a>enableDatGUI
```javascript
function (callback) {
      if (phina.global.dat) {
        var gui = new phina.global.dat.GUI();
        callback(gui);
      }
      else {
        // console.warn("not defined dat.GUI.");
        var URL = 'https://cdnjs.cloudflare.com/ajax/libs/dat-gui/0.5.1/dat.gui.js';
        var script = document.createElement('script');
        script.src = URL;
        document.body.appendChild(script);
        script.onload = function() {
          var gui = new phina.global.dat.GUI();
          callback(gui);
        }.bind(this);
      }
      return this;
    }
```


