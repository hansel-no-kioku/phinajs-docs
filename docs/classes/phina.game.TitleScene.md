# phina.game.TitleScene

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
  
        params = ({}).$safe(params, phina.game.TitleScene.defaults);
  
        this.backgroundColor = params.backgroundColor;
  
        this.fromJSON({
          children: {
            titleLabel: {
              className: 'phina.display.Label',
              arguments: {
                text: params.title,
                fill: params.fontColor,
                stroke: false,
                fontSize: 64,
              },
              x: this.gridX.center(),
              y: this.gridY.span(4),
            }
          }
        });
  
        if (params.exitType === 'touch') {
          this.fromJSON({
            children: {
              touchLabel: {
                className: 'phina.display.Label',
                arguments: {
                  text: "TOUCH START",
                  fill: params.fontColor,
                  stroke: false,
                  fontSize: 32,
                },
                x: this.gridX.center(),
                y: this.gridY.span(12),
              },
            },
          });
  
          this.on('pointend', function() {
            this.exit();
          });
        }
      }
  ```

