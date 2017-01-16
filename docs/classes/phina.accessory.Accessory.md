# phina.accessory.Accessory

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* setTarget
* getTarget
* isAttached
* attachTo
* remove

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
  function (target) {
        this.superInit();
  
        this.target = target;
      }
  ```
* setTarget
  ```javascript
  function (target) {
        if (this.target === target) return ;
  
        this.target = target;
        return this;
      }
  ```
* getTarget
  ```javascript
  function () {
        return this.target;
      }
  ```
* isAttached
  ```javascript
  function () {
        return !!this.target;
      }
  ```
* attachTo
  ```javascript
  function (element) {
        element.attach(this);
        this.setTarget(element);
        return this;
      }
  ```
* remove
  ```javascript
  function () {
        this.target.detach(this);
        this.target = null;
      }
  ```

