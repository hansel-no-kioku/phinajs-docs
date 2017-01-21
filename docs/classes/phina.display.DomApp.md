[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.display.DomApp

super class : [phina.app.BaseApp](phina.app.BaseApp.md)

## Properties


### Instance properties (own)

* domElement : Element
* mouse : [phina.input.Mouse](phina.input.Mouse.md)
* touch : [phina.input.Touch](phina.input.Touch.md)
* touchList : [phina.input.TouchList](phina.input.TouchList.md)
* keyboard : [phina.input.Keyboard](phina.input.Keyboard.md)
* accelerometer : [phina.input.Accelerometer](phina.input.Accelerometer.md)
* pointer : [phina.input.Touch](phina.input.Touch.md)
* pointers : Array

### Instance properties (inherited)

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
      this.superInit(options);

      if (options.domElement) {
        this.domElement = options.domElement;
      }
      else {
        if (options.query) {
          this.domElement = document.querySelector(options.query);
        }
        else {
          console.assert('error');
        }
      }

      if (options.fps !== undefined) {
        this.fps = options.fps;
      }

      this.mouse = phina.input.Mouse(this.domElement);
      this.touch = phina.input.Touch(this.domElement);
      this.touchList = phina.input.TouchList(this.domElement, 5);
      this.keyboard = phina.input.Keyboard(document);
      // 加速度センサーを生成
      this.accelerometer = phina.input.Accelerometer();

      // ポインタをセット(PC では Mouse, Mobile では Touch)
      this.pointer = this.touch;
      this.pointers = this.touchList.touches;

      this.domElement.addEventListener("touchstart", function () {
        this.pointer = this.touch;
        this.pointers = this.touchList.touches;
      }.bind(this));
      this.domElement.addEventListener("mouseover", function () {
        this.pointer = this.mouse;
        this.pointers = [this.mouse];
      }.bind(this));

      // keyboard event
      this.keyboard.on('keydown', function(e) {
        this.currentScene && this.currentScene.flare('keydown', {
          keyCode: e.keyCode,
        });
      }.bind(this));
      this.keyboard.on('keyup', function(e) {
        this.currentScene && this.currentScene.flare('keyup', {
          keyCode: e.keyCode,
        });
      }.bind(this));
      this.keyboard.on('keypress', function(e) {
        this.currentScene && this.currentScene.flare('keypress', {
          keyCode: e.keyCode,
        });
      }.bind(this));

      // click 対応
      var eventName = phina.isMobile() ? 'touchend' : 'mouseup';
      this.domElement.addEventListener(eventName, this._checkClick.bind(this));

      // 決定時の処理をオフにする(iPhone 時のちらつき対策)
      this.domElement.addEventListener("touchstart", function(e) { e.stop(); });
      this.domElement.addEventListener("touchmove", function(e) { e.stop(); });

      // ウィンドウフォーカス時イベントリスナを登録
      phina.global.addEventListener('focus', function() {
        this.flare('focus');
        this.currentScene.flare('focus');
      }.bind(this), false);
      // ウィンドウブラー時イベントリスナを登録
      phina.global.addEventListener('blur', function() {
        this.flare('blur');
        this.currentScene.flare('blur');
      }.bind(this), false);

      // 更新関数を登録
      this.on('enterframe', function() {
        this.mouse.update();
        this.touch.update();
        this.touchList.update();
        this.keyboard.update();
      });
    }
```


