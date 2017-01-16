# phina.asset.AssetLoader

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties

* assetLoadFunctions : Object

### Instance properties (own)


### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* load

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
  function (params) {
        this.superInit();
  
        params = (params || {}).$safe({
          cache: true,
        });
  
        this.assets = {};
        this.cache = params.cache;
      }
  ```
* load
  ```javascript
  function (params) {
        var self = this;
        var flows = [];
  
        var counter = 0;
  
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
                progress: (++counter/flows.length),
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

