# phina.accessory.Draggable

super class : [phina.accessory.Accessory](phina.accessory.Accessory.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)


## Methods

### Class methods

* lock
* unlock

### Instance methods (own)

* init
* back
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
  
        this.on('attached', function() {
          this.target.setInteractive(true);
  
          this._dragging = false;
  
          this.target.on('pointstart', function(e) {
            if (phina.accessory.Draggable._lock) return ;
  
            this._dragging = true;
            self.initialPosition.x = this.x;
            self.initialPosition.y = this.y;
            self.flare('dragstart');
            this.flare('dragstart');
          });
          this.target.on('pointmove', function(e) {
            if (!this._dragging) return ;
  
            this.x += e.pointer.dx;
            this.y += e.pointer.dy;
            self.flare('drag');
            this.flare('drag');
          });
  
          this.target.on('pointend', function(e) {
            if (!this._dragging) return ;
  
            this._dragging = false;
            self.flare('dragend');
            this.flare('dragend');
          });
        });
      }
  ```
* back
  ```javascript
  function (time, easing) {
        if (time) {
          var t = this.target;
          t.setInteractive(false);
          var tweener = phina.accessory.Tweener().attachTo(t);
          tweener
            .to({
              x: this.initialPosition.x,
              y: this.initialPosition.y,
            }, time, easing || 'easeOutElastic')
            .call(function() {
              tweener.remove();
  
              t.setInteractive(true);
              this.flare('backend');
            }, this);
        }
        else {
          this.target.x = this.initialPosition.x;
          this.target.y = this.initialPosition.y;
          this.flare('backend');
        }
      }
  ```
* enable
  ```javascript
  function () {
        this._enable = true;
      }
  ```

