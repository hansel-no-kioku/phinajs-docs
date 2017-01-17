[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.util.Random

super class : none

## Properties

### Class properties

* MAX : Number
* seed : Number



## Methods

### Class methods

* [getSeed](#class_getSeed)
* [setSeed](#class_setSeed)
* [random](#class_random)
* [randint](#class_randint)
* [randfloat](#class_randfloat)
* [randbool](#class_randbool)
* [randarray](#class_randarray)
* [xor32](#class_xor32)
* [uuid](#class_uuid)

### Instance methods (own)

* [init](#instance_init)
* [random](#instance_random)
* [randint](#instance_randint)
* [randfloat](#instance_randfloat)
* [randbool](#instance_randbool)
* [randarray](#instance_randarray)


## Source code of methods (class)

### <a name="class_getSeed"></a>getSeed
```javascript
function () {
        return this.seed;
      }
```

### <a name="class_setSeed"></a>setSeed
```javascript
function (seed) {
        this.seed = (seed >>> 0) || 1;
        return this;
      }
```

### <a name="class_random"></a>random
```javascript
function () {
        this.seed = this.xor32(this.seed);
        return (this.seed >>> 0) / phina.util.Random.MAX;
      }
```

### <a name="class_randint"></a>randint
```javascript
function (min, max) {
        return phina.global.Math.floor( this.random()*(max-min+1) ) + min;
      }
```

### <a name="class_randfloat"></a>randfloat
```javascript
function (min, max) {
        return this.random()*(max-min)+min;
      }
```

### <a name="class_randbool"></a>randbool
```javascript
function () {
        return this.randint(0, 1) === 1;
      }
```

### <a name="class_randarray"></a>randarray
```javascript
function (len, min, max) {
        len = len || 100;
        min = min || 0;
        max = max || 100;

        return (len).map(function() {
          return this.randint(min, max);
        }, this);
      }
```

### <a name="class_xor32"></a>xor32
```javascript
function (seed) {
        seed = seed ^ (seed << 13);
        seed = seed ^ (seed >>> 17);
        seed = (seed ^ (seed << 5));

        return seed;
      }
```

### <a name="class_uuid"></a>uuid
```javascript
function () {
        var d = new Date().getTime();
        if(phina.global.performance && typeof phina.global.performance.now === "function"){
          d += performance.now(); //use high-precision timer if available
        }
        var uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
          var r = (d + Math.random()*16)%16 | 0;
          d = Math.floor(d/16);
          return (c=='x' ? r : (r&0x3|0x8)).toString(16);
        });
        return uuid;
      }
```


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (seed) {
      this.seed = seed || (Date.now()) || 1;
    }
```

### <a name="instance_random"></a>random
```javascript
function () {
      var seed = this.seed;
      seed = seed ^ (seed << 13);
      seed = seed ^ (seed >>> 17);
      seed = (seed ^ (seed << 5));

      this.seed = seed;

      return (seed >>> 0) / phina.util.Random.MAX;
    }
```

### <a name="instance_randint"></a>randint
```javascript
function (min, max) {
      return Math.floor( this.random()*(max-min+1) ) + min;
    }
```

### <a name="instance_randfloat"></a>randfloat
```javascript
function (min, max) {
      return this.random()*(max-min)+min;
    }
```

### <a name="instance_randbool"></a>randbool
```javascript
function () {
      return this.randint(0, 1) === 1;
    }
```

### <a name="instance_randarray"></a>randarray
```javascript
function (len, min, max) {
      len = len || 100;
      min = min || 0;
      max = max || 100;

      return (len).map(function() {
        return this.randint(min, max);
      }, this);
    }
```


