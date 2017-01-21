[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.app.Element

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties


### Instance properties (own)

* children : Array
* accessories : Array
* parent : Unknown
* awake : Boolean
* tweener : [phina.accessory.Tweener](phina.accessory.Tweener.md)
* draggable : Unknown
* flickable : Unknown
* physical : [phina.accessory.Physical](phina.accessory.Physical.md)


## Methods


### Instance methods (own)

* [init](#instance_init)
* [addChild](#instance_addChild)
* [addChildTo](#instance_addChildTo)
* [addChildAt](#instance_addChildAt)
* [getChildAt](#instance_getChildAt)
* [getChildByName](#instance_getChildByName)
* [getChildIndex](#instance_getChildIndex)
* [getParent](#instance_getParent)
* [getRoot](#instance_getRoot)
* [removeChild](#instance_removeChild)
* [remove](#instance_remove)
* [isAwake](#instance_isAwake)
* [wakeUp](#instance_wakeUp)
* [sleep](#instance_sleep)
* [fromJSON](#instance_fromJSON)
* [toJSON](#instance_toJSON)
* [attach](#instance_attach)
* [detach](#instance_detach)

### Instance methods (inherited)

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
function () {
      this.superInit();
      this.children = [];
    }
```

### <a name="instance_addChild"></a>addChild
```javascript
function (child) {
      if (child.parent) child.remove();

      child.parent = this;
      this.children.push(child);

      child.has('added') && child.flare('added');

      return child;
    }
```

### <a name="instance_addChildTo"></a>addChildTo
```javascript
function (parent) {
      parent.addChild(this);

      return this;
    }
```

### <a name="instance_addChildAt"></a>addChildAt
```javascript
function (child, index) {
      if (child.parent) child.remove();

      child.parent = this;
      this.children.splice(index, 0, child);

      child.has('added') && child.flare('added');

      return child;
    }
```

### <a name="instance_getChildAt"></a>getChildAt
```javascript
function (index) {
      return this.children.at(index);
    }
```

### <a name="instance_getChildByName"></a>getChildByName
```javascript
function (name) {
      // TODO: 
    }
```

### <a name="instance_getChildIndex"></a>getChildIndex
```javascript
function (child) {
      return this.children.indexOf(child);
    }
```

### <a name="instance_getParent"></a>getParent
```javascript
function () {
      return this.parent;
    }
```

### <a name="instance_getRoot"></a>getRoot
```javascript
function () {
      var elm = this;
      for (elm=this.parent; elm.parent != null; elm = elm.parent) {

      }
      return elm;
    }
```

### <a name="instance_removeChild"></a>removeChild
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

### <a name="instance_remove"></a>remove
```javascript
function () {
      if (!this.parent) return ;

      this.parent.removeChild(this);
      this.parent = null;
      
      return this;
    }
```

### <a name="instance_isAwake"></a>isAwake
```javascript
function () {
      return this.awake;
    }
```

### <a name="instance_wakeUp"></a>wakeUp
```javascript
function () {
      this.awake = true;
      return this;
    }
```

### <a name="instance_sleep"></a>sleep
```javascript
function () {
      this.awake = false;
      return this;
    }
```

### <a name="instance_fromJSON"></a>fromJSON
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

### <a name="instance_toJSON"></a>toJSON
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

### <a name="instance_attach"></a>attach
```javascript
function (accessory) {
    if (!this.accessories) {
      this.accessories = [];
      this.on('enterframe', function(e) {
        this.accessories.each(function(accessory) {
          accessory.update && accessory.update(e.app);
        });
      });
    }

    this.accessories.push(accessory);
    accessory.setTarget(this);
    accessory.flare('attached');

    return this;
  }
```

### <a name="instance_detach"></a>detach
```javascript
function (accessory) {
    if (this.accessories) {
      this.accessories.erase(accessory);
      accessory.setTarget(null);
      accessory.flare('detached');
    }

    return this;
  }
```


