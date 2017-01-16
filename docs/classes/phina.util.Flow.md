# phina.util.Flow

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)


## Methods

### Class methods

* resolve
* all

### Instance methods (own)

* init
* resolve
* reject
* then

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
* resolve
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
* reject
  ```javascript
  function () {
  
      }
  ```
* then
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

