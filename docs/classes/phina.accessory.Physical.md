# phina.accessory.Physical

super class : [phina.accessory.Accessory](phina.accessory.Accessory.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* update
* force
* addForce
* setGravity
* setFriction

### Instance methods (inherited)

* setTarget
* getTarget
* isAttached
* attachTo
* remove
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
        this.superInit(target);
  
        this.velocity = phina.geom.Vector2(0, 0);
        this.gravity = phina.geom.Vector2(0, 0);
  
        this.friction = 1.0;
      }
  ```
* update
  ```javascript
  function () {
        var t = this.target;
  
        this.velocity.x *= this.friction;
        this.velocity.y *= this.friction;
  
        this.velocity.x += this.gravity.x;
        this.velocity.y += this.gravity.y;
  
        t.position.x += this.velocity.x;
        t.position.y += this.velocity.y;
      }
  ```
* force
  ```javascript
  function (x, y) {
        this.velocity.set(x, y);
        return this;
      }
  ```
* addForce
  ```javascript
  function (x, y) {
        this.velocity.x += x;
        this.velocity.y += y;
        return this;
      }
  ```
* setGravity
  ```javascript
  function (x, y) {
        this.gravity.set(x, y);
        return this;
      }
  ```
* setFriction
  ```javascript
  function (fr) {
        this.friction = fr;
        return this;
      }
  ```

