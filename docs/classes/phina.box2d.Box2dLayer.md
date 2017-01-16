# phina.box2d.Box2dLayer

super class : [phina.display.Layer](phina.display.Layer.md)

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)

* renderChildBySelf : Boolean
* visible : Boolean
* alpha : Number
* blendMode : String
* position : Null
* rotation : Number
* scale : Null
* origin : Null
* parent : Null
* children : Null
* awake : Boolean

## Methods

### Class methods


### Instance methods (own)

* init
* createBody
* update
* draw

### Instance methods (inherited)

* setVisible
* show
* hide
* hitTest
* hitTestRect
* hitTestCircle
* hitTestElement
* globalToLocal
* setInteractive
* setX
* setY
* setPosition
* setRotation
* setScale
* setOrigin
* setWidth
* setHeight
* setSize
* setBoundingType
* moveTo
* moveBy
* addChild
* addChildTo
* addChildAt
* getChildAt
* getChildByName
* getChildIndex
* getParent
* getRoot
* removeChild
* remove
* isAwake
* wakeUp
* sleep
* fromJSON
* toJSON
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
        this.superInit(params);
  
        params = (params || {}).$safe({
          worldScale: 50, // or 50
        });
  
        // 重力と物理世界の設定
        var gravity = new b2.Vec2(0, 9.8);
        var world = new b2.World(gravity, true);
        
        this.world = world;
        this.world._scale = params.worldScale;
  
        this._setupDebugDraw();
      }
  ```
* createBody
  ```javascript
  function (params) {
        params.world = this.world;
        var body = phina.box2d.Box2dBody(params);
        return body;
      }
  ```
* update
  ```javascript
  function (app) {
        // var timeStep = app.ticker.frameTime/1000;
        var timeStep = app.ticker.deltaTime/1000;
        var velocityIterations = 10;
        var positionIterations = 10;
        // 物理空間の更新
        this.world.Step(timeStep,velocityIterations,positionIterations);
      }
  ```
* draw
  ```javascript
  function (canvas) {
        // debug画面の更新
        this.world.ClearForces();
        this.world.DrawDebugData();
        var domElement = this.canvas.domElement;
        canvas.context.drawImage(domElement, 0, 0, domElement.width, domElement.height);
      }
  ```

