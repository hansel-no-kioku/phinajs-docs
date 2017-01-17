[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.asset.Asset

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties


### Instance properties (own)

* serverError : Boolean
* notFound : Boolean
* loadError : Boolean


## Methods


### Instance methods (own)

* [init](#instance_init)
* [load](#instance_load)
* [isLoaded](#instance_isLoaded)
* [loadDummy](#instance_loadDummy)

### Instance methods (inherited)

* [on](phina.util.EventDispatcher.md#instance_on)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [off](phina.util.EventDispatcher.md#instance_off)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [fire](phina.util.EventDispatcher.md#instance_fire)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [flare](phina.util.EventDispatcher.md#instance_flare)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [one](phina.util.EventDispatcher.md#instance_one)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [has](phina.util.EventDispatcher.md#instance_has)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [clear](phina.util.EventDispatcher.md#instance_clear)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (src) {
      this.superInit();

      this.loaded = false;
    }
```

### <a name="instance_load"></a>load
```javascript
function (src) {
      this.src = src;
      return phina.util.Flow(this._load.bind(this));
    }
```

### <a name="instance_isLoaded"></a>isLoaded
```javascript
function () {
      return this.loaded;
    }
```

### <a name="instance_loadDummy"></a>loadDummy
```javascript
function () { }
```


