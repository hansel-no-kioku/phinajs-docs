# phina.game.GameApp

super class : [phina.display.CanvasApp](phina.display.CanvasApp.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)

* domElement : Null
* awake : Null

## Methods

### Class methods


### Instance methods (own)

* init

### Instance methods (inherited)

* fitScreen
* run
* replaceScene
* pushScene
* popScene
* start
* stop
* enableStats
* enableDatGUI
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

