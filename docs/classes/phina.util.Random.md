# phina.util.Random

super class : none

## Properties

### Class properties

* MAX : Number
* seed : Number

### Instance properties (own)


### Instance properties (inherited)


## Methods

### Class methods

* getSeed
* setSeed
* random
* randint
* randfloat
* randbool
* randarray
* xor32
* uuid

### Instance methods (own)

* init
* random
* randint
* randfloat
* randbool
* randarray

### Instance methods (inherited)


## Sources

* init
  ```javascript
  function (seed) {
        this.seed = seed || (Date.now()) || 1;
      }
  ```
* random
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
* randint
  ```javascript
  function (min, max) {
        return Math.floor( this.random()*(max-min+1) ) + min;
      }
  ```
* randfloat
  ```javascript
  function (min, max) {
        return this.random()*(max-min)+min;
      }
  ```
* randbool
  ```javascript
  function () {
        return this.randint(0, 1) === 1;
      }
  ```
* randarray
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

