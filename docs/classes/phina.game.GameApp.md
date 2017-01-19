[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.game.GameApp

super class : [phina.display.CanvasApp](phina.display.CanvasApp.md)

## Properties



### Instance properties (inherited)

* domElement : Element&ensp;&ensp;(from [phina.display.DomApp](phina.display.DomApp.md))
* awake : Boolean&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* fps : Number&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* frame : Number&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* currentScene : [phina.game.TitleScene](phina.game.TitleScene.md)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* rootScene : [phina.game.ManagerScene](phina.game.ManagerScene.md)&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* deltaTime : Number&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* elapsedTime : Number&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* currentTime : Unknown&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))
* startTime : Unknown&ensp;&ensp;(from [phina.app.BaseApp](phina.app.BaseApp.md))

## Methods


### Instance methods (own)

* [init](#instance_init)

### Instance methods (inherited)

* [fitScreen](phina.display.CanvasApp.md#instance_fitScreen)&ensp;&ensp;(from [phina.display.CanvasApp](phina.display.CanvasApp.md))
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

      options = (options || {}).$safe({
        startLabel: 'title',
      });
      this.superInit(options);

      var startLabel = options.startLabel || 'title';

      var scenes = options.scenes || [
        {
          className: 'SplashScene',
          label: 'splash',
          nextLabel: 'title',
        },

        {
          className: 'TitleScene',
          label: 'title',
          nextLabel: 'main',
        },
        {
          className: 'MainScene',
          label: 'main',
          nextLabel: 'result',
        },
        {
          className: 'ResultScene',
          label: 'result',
          nextLabel: 'title',
        },
      ];

      scenes = scenes.each(function(s) {
        s.arguments = s.arguments || options;
      });

      var scene = phina.game.ManagerScene({
        startLabel: startLabel,
        scenes: scenes,
      });

      if (options.assets) {
        var loadingOptions = ({}).$extend(options, {
          exitType: '',
        });
        var loadingClass = phina.global.LoadingScene || phina.game.LoadingScene;
        var loading = loadingClass(loadingOptions);
        this.replaceScene(loading);

        loading.onloaded = function() {
          this.replaceScene(scene);
          if (options.debug) {
            this._enableDebugger();
          }
        }.bind(this);

      }
      else {
        this.replaceScene(scene);
        if (options.debug) {
          this._enableDebugger();
        }
      }

      // 自動でポーズする
      if (options.autoPause) {
        this.on('blur', function() {
          var pauseScene = phina.game.PauseScene();
          this.pushScene(pauseScene);
        });
      }
    }
```


