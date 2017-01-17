[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.util.Flow

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties




## Methods

### Class methods

* [resolve](#class_resolve)
* [all](#class_all)

### Instance methods (own)

* [init](#instance_init)
* [resolve](#instance_resolve)
* [reject](#instance_reject)
* [then](#instance_then)

### Instance methods (inherited)

* [on](phina.util.EventDispatcher.md#instance_on)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [off](phina.util.EventDispatcher.md#instance_off)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [fire](phina.util.EventDispatcher.md#instance_fire)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [flare](phina.util.EventDispatcher.md#instance_flare)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [one](phina.util.EventDispatcher.md#instance_one)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [has](phina.util.EventDispatcher.md#instance_has)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [clear](phina.util.EventDispatcher.md#instance_clear)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))

## Source code of methods (class)

### <a name="class_resolve"></a>resolve
```javascript
function (value) {
        if (value instanceof phina.util.Flow) {
          return value;
        }
        else {
          var flow = phina.util.Flow(function(resolve) {
            resolve(value);
          });
          return flow;
        }
      }
```

### <a name="class_all"></a>all
```javascript
function (flows) {
        return phina.util.Flow(function(resolve) {
          var count = 0;

          var args = [];

          flows.each(function(flow) {
            flow.then(function(d) {
              ++count;
              args.push(d);

              if (count >= flows.length) {
                resolve(args);
              }
            });
          });
        });
      }
```


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (func, wait) {
      this.superInit();

      this.status = 'pending';
      this.resultValue = null;
      this._queue = [];
      this.func = func;

      if (wait !== true) {
        var self = this;
        var resolve = function() {
          self.resolve.apply(self, arguments);
          self.status = 'resolved';
        };
        var reject = function() {
          self.reject.apply(self, arguments);
          self.status = 'rejected';
        };

        this.func(resolve, reject);
      }
    }
```

### <a name="instance_resolve"></a>resolve
```javascript
function (arg) {
      this.resultValue = arg;

      // キューに積まれた関数を実行
      this._queue.each(function(func) {
        func(this.resultValue);
      }, this);
      this._queue.clear();
    }
```

### <a name="instance_reject"></a>reject
```javascript
function () {

    }
```

### <a name="instance_then"></a>then
```javascript
function (func) {
      var self = this;
      // 成功ステータスだった場合は即実行
      if (this.status === 'resolved') {
        var value = func(this.resultValue);
        return phina.util.Flow.resolve(value);
      }
      else {
        var flow = phina.util.Flow(function(resolve) {
          resolve();
        }, true);

        this._queue.push(function(arg) {
          var resultValue = func(arg);

          if (resultValue instanceof phina.util.Flow) {
            resultValue.then(function(value) {
              flow.resolve(value);
            });
          }
          else {
            flow.resolve(arg);
          }
        });

        return flow;
      }
    }
```


