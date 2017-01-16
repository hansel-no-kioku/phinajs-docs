# phina.game.LoadingScene

super class : [phina.display.DisplayScene](phina.display.DisplayScene.md)

## Properties

### Class properties

* defaults : Object

### Instance properties (own)


### Instance properties (inherited)

* parent : Null
* children : Null
* awake : Boolean

## Methods

### Class methods


### Instance methods (own)

* init

### Instance methods (inherited)

* hitTest
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
  function (options) {
        options = ({}).$safe(options, phina.game.LoadingScene.defaults);
        this.superInit(options);
  
        this.fromJSON({
          children: {
            gauge: {
              className: 'phina.ui.Gauge',
              arguments: {
                value: 0,
                width: this.width,
                height: 12,
                fill: '#aaa',
                stroke: false,
                gaugeColor: 'hsla(200, 100%, 80%, 0.8)',
                padding: 0,
              },
              x: this.gridX.center(),
              y: 0,
              originY: 0,
            }
          }
        });
  
        var loader = phina.asset.AssetLoader();
  
        if (options.lie) {
          this.gauge.animationTime = 10*1000;
          this.gauge.value = 90;
  
          loader.onload = function() {
            this.gauge.animationTime = 0;
            this.gauge.value = 100;
          }.bind(this);
        }
        else {
          this.gauge.animationTime = 100;
          loader.onprogress = function(e) {
            this.gauge.value = e.progress * 100;
          }.bind(this);
        }
  
        this.gauge.onfull = function() {
          if (options.exitType === 'auto') {
            this.app.popScene();
          }
          this.flare('loaded');
        }.bind(this);
  
        loader.load(options.assets);
      }
  ```

