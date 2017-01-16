# phina.game.CountScene

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
        this.superInit(options);
  
        options = (options || {}).$safe(phina.game.CountScene.defaults);
  
        this.backgroundColor = options.backgroundColor;
  
        this.fromJSON({
          children: {
            label: {
              className: 'phina.display.Label',
              arguments: {
                fill: options.fontColor,
                fontSize: options.fontSize,
                stroke: false,
              },
              x: this.gridX.center(),
              y: this.gridY.center(),
            },
          }
        });
  
        if (options.count instanceof Array) {
          this.countList = options.count.reverse();
        }
        else {
          this.countList = Array.range(1, options.count+1);
        }
        this.counter = this.countList.length;
        this.exitType = options.exitType;
  
        this._updateCount();
      }
  ```

