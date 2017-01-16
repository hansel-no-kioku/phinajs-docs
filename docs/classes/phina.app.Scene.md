# phina.app.Scene

super class : [phina.app.Element](phina.app.Element.md)

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
* exit

### Instance methods (inherited)

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
  function () {
        this.superInit();
      }
  ```
* exit
  ```javascript
  function (nextLabel, nextArguments) {
        if (!this.app) return ;
  
        if (arguments.length > 0) {
          if (typeof arguments[0] === 'object') {
            nextLabel = arguments[0].nextLabel || this.nextLabel;
            nextArguments = arguments[0];
          }
  
          this.nextLabel = nextLabel;
          this.nextArguments = nextArguments;
        }
  
        this.app.popScene();
  
        return this;
      }
  ```

