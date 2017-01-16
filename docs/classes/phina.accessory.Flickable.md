# phina.accessory.Flickable

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
* cancel
* enable

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
  
        this.initialPosition = phina.geom.Vector2(0, 0);
        var self = this;
  
        this.friction = 0.9;
        this.velocity = phina.geom.Vector2(0, 0);
        this.vertical = true;
        this.horizontal = true;
  
        this.cacheList = [];
  
        this.on('attached', function() {
          this.target.setInteractive(true);
  
          this.target.on('pointstart', function(e) {
            self.initialPosition.set(this.x, this.y);
            self.velocity.set(0, 0);
          });
          this.target.on('pointstay', function(e) {
            if (self.horizontal) {
              this.x += e.pointer.dx;
            }
            if (self.vertical) {
              this.y += e.pointer.dy;
            }
  
            if (self.cacheList.length > 3) self.cacheList.shift();
            self.cacheList.push(e.pointer.deltaPosition.clone());
          });
  
          this.target.on('pointend', function(e) {
            // 動きのある delta position を後ろから検索　
            var delta = self.cacheList.reverse().find(function(v) {
              return v.lengthSquared() > 10;
            });
            self.cacheList.clear();
  
            if (delta) {
              self.velocity.x = delta.x;
              self.velocity.y = delta.y;
  
              self.flare('flickstart', {
                direction: delta.normalize(),
              });
            }
            else {
              self.flare('flickcancel');
            }
  
            // self.flare('flick');
            // self.flare('flickend');
          });
        });
      }
  ```
* update
  ```javascript
  function () {
        if (!this.target) return ;
  
        this.velocity.x *= this.friction;
        this.velocity.y *= this.friction;
  
        if (this.horizontal) {
          this.target.position.x += this.velocity.x;
        }
        if (this.vertical) {
          this.target.position.y += this.velocity.y;
        }
      }
  ```
* cancel
  ```javascript
  function () {
        this.target.x = this.initialPosition.x;
        this.target.y = this.initialPosition.y;
        this.velocity.set(0, 0);
  
        // TODO: 
        // this.setInteractive(false);
        // this.tweener.clear()
        //     .move(this.initialX, this.initialY, 500, "easeOutElastic")
        //     .call(function () {
        //         this.setInteractive(true);
        //         this.fire(tm.event.Event("backend"));
        //     }.bind(this));
      }
  ```
* enable
  ```javascript
  function () {
        this._enable = true;
      }
  ```

