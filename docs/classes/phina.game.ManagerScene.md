# phina.game.ManagerScene

super class : [phina.app.Scene](phina.app.Scene.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)

* parent : Null
* children : Null
* awake : Boolean

## Methods

### Class methods


### Instance methods (own)

* init
* setScenes
* replaceScene
* gotoScene
* gotoNext
* getCurrentIndex
* getCurrentLabel
* labelToIndex
* indexToLabel
* onnext

### Instance methods (inherited)

* exit
* addChild
* addChildTo
* addChildAt
* getChildAt
* getChildByName
* getChildIndex
* getParent
* getRoot
* removeChild
* remove
* isAwake
* wakeUp
* sleep
* fromJSON
* toJSON
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
  function (params) {
        this.superInit();
  
        this.setScenes(params.scenes);
  
        this.on("enter", function() {
          this.gotoScene(params.startLabel || 0);
        }.bind(this));
  
        this.on("resume", this.onnext.bind(this));
  
        this.commonArguments = {};
      }
  ```
* setScenes
  ```javascript
  function (scenes) {
        this.scenes = scenes;
        this.sceneIndex = 0;
  
        return this;
      }
  ```
* replaceScene
  ```javascript
  function (label, args) {
        var index = (typeof label == 'string') ? this.labelToIndex(label) : label||0;
  
        var data = this.scenes[index];
  
        if (!data) {
          console.error('phina.js error: `{0}` に対応するシーンがありません.'.format(label));
        }
  
        var klass = phina.using(data.className);
        if (typeof klass !== 'function') {
          klass = phina.using('phina.game.' + data.className);
        }
  
        var initArguments = {}.$extend(data.arguments, args);
        var scene = klass.call(null, initArguments);
        if (!scene.nextLabel) {
            scene.nextLabel = data.nextLabel;
        }
        if (!scene.nextArguments) {
            scene.nextArguments = data.nextArguments;
        }
        this.app.replaceScene(scene);
  
        this.sceneIndex = index;
  
        return this;
      }
  ```
* gotoScene
  ```javascript
  function (label, args) {
        var index = (typeof label == 'string') ? this.labelToIndex(label) : label||0;
  
        var data = this.scenes[index];
  
        if (!data) {
          console.error('phina.js error: `{0}` に対応するシーンがありません.'.format(label));
        }
  
        var klass = phina.using(data.className);
        if (typeof klass !== 'function') {
          klass = phina.using('phina.game.' + data.className);
        }
  
        var initArguments = {}.$extend(data.arguments, args);
        var scene = klass.call(null, initArguments);
        if (!scene.nextLabel) {
            scene.nextLabel = data.nextLabel;
        }
        if (!scene.nextArguments) {
            scene.nextArguments = data.nextArguments;
        }
        this.app.pushScene(scene);
  
        this.sceneIndex = index;
  
        return this;
      }
  ```
* gotoNext
  ```javascript
  function (args) {
        var data = this.scenes[this.sceneIndex];
        var nextIndex = null;
  
        // 次のラベルが設定されていた場合
        if (data.nextLabel) {
            nextIndex = this.labelToIndex(data.nextLabel);
        }
        // 次のシーンに遷移
        else if (this.sceneIndex+1 < this.scenes.length) {
            nextIndex = this.sceneIndex+1;
        }
  
        if (nextIndex !== null) {
            this.gotoScene(nextIndex, args);
        }
        else {
            this.flare("finish");
        }
  
        return this;
      }
  ```
* getCurrentIndex
  ```javascript
  function () {
        return this.sceneIndex;
      }
  ```
* getCurrentLabel
  ```javascript
  function () {
        return this.scenes[this.sceneIndex].label;
      }
  ```
* labelToIndex
  ```javascript
  function (label) {
        var data = this.scenes.filter(function(data) {
          return data.label == label;
        })[0];
  
        return this.scenes.indexOf(data);
      }
  ```
* indexToLabel
  ```javascript
  function (index) {
        return this.scenes[index].label;
      }
  ```
* onnext
  ```javascript
  function (e) {
        var nextLabel = e.prevScene.nextLabel;
        var nextArguments = e.prevScene.nextArguments;
        if (nextLabel) {
          this.gotoScene(nextLabel, nextArguments);
        }
        else {
          this.gotoNext(nextArguments);
        }
      }
  ```

