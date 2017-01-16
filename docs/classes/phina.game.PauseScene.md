# phina.game.PauseScene

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
  function (params) {
        this.superInit(params);
  
        params = ({}).$safe(params, phina.game.PauseScene.defaults);
  
        this.backgroundColor = params.backgroundColor;
  
        this.fromJSON({
          children: {
            text: {
              className: 'phina.display.Label',
              arguments: {
                text: 'Pause',
                fill: params.fontColor,
                stroke: null,
                fontSize: 48,
              },
              x: this.gridX.center(),
              y: this.gridY.center(),
            },
          }
        });
  
        if (params.exitType === 'touch') {
          this.on('pointend', function() {
            this.exit();
          });
        }
      }
  ```

