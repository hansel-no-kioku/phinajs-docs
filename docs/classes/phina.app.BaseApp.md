# phina.app.BaseApp

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties


### Instance properties (own)

* awake : Null

### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* run
* replaceScene
* pushScene
* popScene
* start
* stop
* enableStats
* enableDatGUI

### Instance methods (inherited)

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
        this._scenes = [phina.app.Scene()];
        this._sceneIndex = 0;
  
        this.updater = phina.app.Updater(this);
        this.interactive = phina.app.Interactive(this);
  
        this.awake = true;
        this.ticker = phina.util.Ticker();
      }
  ```
* run
  ```javascript
  function () {
        var self = this;
  
        this.ticker.tick(function() {
          self._loop();
        });
  
        this.ticker.start();
  
        return this;
      }
  ```
* replaceScene
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
* pushScene
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
* popScene
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
* start
  ```javascript
  function () {
        this.awake = true;
  
        return this;
      }
  ```
* stop
  ```javascript
  function () {
        this.awake = false;
  
        return this;
      }
  ```
* enableStats
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
* enableDatGUI
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

