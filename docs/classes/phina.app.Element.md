# phina.app.Element

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties


### Instance properties (own)

* parent : Null
* children : Null
* awake : Boolean

### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
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
        this.children = [];
      }
  ```
* addChild
  ```javascript
  function (child) {
        if (child.parent) child.remove();
  
        child.parent = this;
        this.children.push(child);
  
        child.has('added') && child.flare('added');
  
        return child;
      }
  ```
* addChildTo
  ```javascript
  function (parent) {
        parent.addChild(this);
  
        return this;
      }
  ```
* addChildAt
  ```javascript
  function (child, index) {
        if (child.parent) child.remove();
  
        child.parent = this;
        this.children.splice(index, 0, child);
  
        child.has('added') && child.flare('added');
  
        return child;
      }
  ```
* getChildAt
  ```javascript
  function (index) {
        return this.children.at(index);
      }
  ```
* getChildByName
  ```javascript
  function (name) {
        // TODO: 
      }
  ```
* getChildIndex
  ```javascript
  function (child) {
        return this.children.indexOf(child);
      }
  ```
* getParent
  ```javascript
  function () {
        return this.parent;
      }
  ```
* getRoot
  ```javascript
  function () {
        var elm = this;
        for (elm=this.parent; elm.parent != null; elm = elm.parent) {
  
        }
        return elm;
      }
  ```
* removeChild
  ```javascript
  function (child) {
        var index = this.children.indexOf(child);
        if (index !== -1) {
          this.children.splice(index, 1);
          child.has('removed') && child.flare('removed');
        }
        return this;
      }
  ```
* remove
  ```javascript
  function () {
        if (!this.parent) return ;
  
        this.parent.removeChild(this);
        this.parent = null;
        
        return this;
      }
  ```
* isAwake
  ```javascript
  function () {
        return this.awake;
      }
  ```
* wakeUp
  ```javascript
  function () {
        this.awake = true;
        return this;
      }
  ```
* sleep
  ```javascript
  function () {
        this.awake = false;
        return this;
      }
  ```
* fromJSON
  ```javascript
  function (json) {
  
        var createChildren = function(name, data) {
          // 
          var args = data.arguments;
          args = (args instanceof Array) ? args : [args];
          // 
          var _class = phina.using(data.className);
          // 
          var element = _class.apply(null, args);
          
          element.name = name;
          this[name] = element;
  
          element.fromJSON(data);
          element.addChildTo(this)
        }.bind(this);
  
        json.forIn(function(key, value) {
          if (key === 'children') {
            value.forIn(function(name, data) {
              createChildren(name, data);
            });
          }
          else {
            if (key !== 'type' && key !== 'className') {
              this[key] = value;
            }
          }
        }, this);
  
        return this;
      }
  ```
* toJSON
  ```javascript
  function () {
        var json = {};
  
        // this.forIn(function(key, value) {
        //   if (key[0] === '_') return ;
        //   json[key] = value;
        // });
  
        var keys = [
          'x', 'y',
          'rotation',
          'scaleX', 'scaleY',
          'originX', 'originY',
          'className',
          'name',
        ];
  
        keys.each(function(key) {
          json[key] = this[key];
        }, this);
  
        var children = this.children.map(function(child) {
          return child.toJSON();
        });
  
        if (children.length) {
          json.children = {};
          children.each(function(child) {
            json.children[child.name] = child;
          });
        }
  
        return json;
      }
  ```

