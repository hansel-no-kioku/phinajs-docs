# phina.display.ThreeLayer

super class : [phina.display.Layer](phina.display.Layer.md)

## Properties

### Class properties


### Instance properties (own)

* scene : Null
* camera : Null
* light : Null
* renderer : Null

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

### Instance methods (inherited)

* draw
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
  function (options) {
        this.superInit(options);
  
        this.scene = new THREE.Scene();
  
        this.camera = new THREE.PerspectiveCamera( 75, options.width / options.height, 1, 10000 );
        this.camera.position.z = 1000;
  
        this.light = new THREE.DirectionalLight( 0xffffff, 1 );
        this.light.position.set( 1, 1, 1 ).normalize();
        this.scene.add( this.light );
  
        this.renderer = new THREE.WebGLRenderer();
        this.renderer.setClearColor( 0xf0f0f0 );
        this.renderer.setSize( options.width, options.height );
  
        this.on('enterframe', function() {
          this.renderer.render( this.scene, this.camera );
        });
  
        this.domElement = this.renderer.domElement;
      }
  ```

