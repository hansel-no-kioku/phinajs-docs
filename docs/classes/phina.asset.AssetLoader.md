[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.asset.AssetLoader

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties

* assetLoadFunctions : 
  * image : Function
  * sound : Function
  * spritesheet : Function
  * script : Function
  * font : Function
  * json : Function
  * xml : Function
  * text : Function


### Instance properties (own)

* assets : Object
* cache : Boolean


## Methods

### Class methods

* [register](#class_register)

### Instance methods (own)

* [init](#instance_init)
* [load](#instance_load)

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

## Source code of methods (class)

### <a name="class_register"></a>register
```javascript
function (key, func) {
        this.assetLoadFunctions[key] = func;
        return this;
      }
```


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (params) {
      this.superInit();

      params = (params || {}).$safe({
        cache: true,
      });

      this.assets = {};
      this.cache = params.cache;
    }
```

### <a name="instance_load"></a>load
```javascript
function (params) {
      var self = this;
      var flows = [];

      var counter = 0;
      var length = 0;
      params.forIn(function(type, assets) {
        length += Object.keys(assets).length;
      });
      
      params.forIn(function(type, assets) {
        assets.forIn(function(key, value) {
          var func = phina.asset.AssetLoader.assetLoadFunctions[type];
          var flow = func(key, value);
          flow.then(function(asset) {
            if (self.cache) {
              phina.asset.AssetManager.set(type, key, asset);
            }
            self.flare('progress', {
              key: key,
              asset: asset,
              progress: (++counter/length),
            });
          });
          flows.push(flow);
        });
      });


      if (self.cache) {

        self.on('progress', function(e) {
          if (e.progress >= 1.0) {
            // load失敗時、対策
            params.forIn(function(type, assets) {
              assets.forIn(function(key, value) {
                var asset = phina.asset.AssetManager.get(type, key);
                if (asset.loadError) {
                  var dummy = phina.asset.AssetManager.get(type, 'dummy');
                  if (dummy) {
                    if (dummy.loadError) {
                      dummy.loadDummy();
                      dummy.loadError = false;
                    }
                    phina.asset.AssetManager.set(type, key, dummy);
                  } else {
                    asset.loadDummy();
                  }
                }
              });
            });
          }
        });
      }
      return phina.util.Flow.all(flows).then(function(args) {
        self.flare('load');
      });
    }
```


