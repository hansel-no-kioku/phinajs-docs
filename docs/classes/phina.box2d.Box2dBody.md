# phina.box2d.Box2dBody

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
  function (params) {
        this.superInit();
  
        this.world = params.world;
        this.type = params.type;
        this.shape = params.shape;
  
        this._init();
  
        this.on('attached', function() {
          var target = this.target;
  
          var p = new b2.Vec2(target.x/this.world._scale, target.y/this.world._scale);
          this.body.SetPosition(p);
          this.body.SetAngle(target.rotation * Math.PI/180);
  
          this._bindFixture(this.target);
        });
      }
  ```
* update
  ```javascript
  function (app) {
        var target = this.target;
  
        target.x = this.body.GetPosition().x * this.world._scale;
        target.y = this.body.GetPosition().y * this.world._scale;
        target.rotation = this.body.GetAngle() * 180/Math.PI;
      }
  ```

