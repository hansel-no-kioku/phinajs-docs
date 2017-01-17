[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.display.ThreeLayer

super class : [phina.display.Layer](phina.display.Layer.md)

## Properties


### Instance properties (own)

* scene : Unknown
* camera : Unknown
* light : Unknown
* renderer : Unknown

### Instance properties (inherited)

* renderChildBySelf : Boolean&ensp;&ensp;(from [phina.display.Layer](phina.display.Layer.md))
* visible : Boolean&ensp;&ensp;(from [phina.display.DisplayElement](phina.display.DisplayElement.md))
* alpha : Number&ensp;&ensp;(from [phina.display.DisplayElement](phina.display.DisplayElement.md))
* blendMode : String&ensp;&ensp;(from [phina.display.DisplayElement](phina.display.DisplayElement.md))
* position : Unknown&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* rotation : Number&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* scale : Unknown&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* origin : Unknown&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* parent : Unknown&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* children : Unknown&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* awake : Boolean&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))

## Methods


### Instance methods (own)

* [init](#instance_init)

### Instance methods (inherited)

* [draw](phina.display.Layer.md#instance_draw)&ensp;&ensp;(from [phina.display.Layer](phina.display.Layer.md))
* [setVisible](phina.display.DisplayElement.md#instance_setVisible)&ensp;&ensp;(from [phina.display.DisplayElement](phina.display.DisplayElement.md))
* [show](phina.display.DisplayElement.md#instance_show)&ensp;&ensp;(from [phina.display.DisplayElement](phina.display.DisplayElement.md))
* [hide](phina.display.DisplayElement.md#instance_hide)&ensp;&ensp;(from [phina.display.DisplayElement](phina.display.DisplayElement.md))
* [hitTest](phina.app.Object2D.md#instance_hitTest)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [hitTestRect](phina.app.Object2D.md#instance_hitTestRect)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [hitTestCircle](phina.app.Object2D.md#instance_hitTestCircle)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [hitTestElement](phina.app.Object2D.md#instance_hitTestElement)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [globalToLocal](phina.app.Object2D.md#instance_globalToLocal)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setInteractive](phina.app.Object2D.md#instance_setInteractive)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setX](phina.app.Object2D.md#instance_setX)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setY](phina.app.Object2D.md#instance_setY)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setPosition](phina.app.Object2D.md#instance_setPosition)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setRotation](phina.app.Object2D.md#instance_setRotation)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setScale](phina.app.Object2D.md#instance_setScale)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setOrigin](phina.app.Object2D.md#instance_setOrigin)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setWidth](phina.app.Object2D.md#instance_setWidth)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setHeight](phina.app.Object2D.md#instance_setHeight)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setSize](phina.app.Object2D.md#instance_setSize)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [setBoundingType](phina.app.Object2D.md#instance_setBoundingType)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [moveTo](phina.app.Object2D.md#instance_moveTo)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [moveBy](phina.app.Object2D.md#instance_moveBy)&ensp;&ensp;(from [phina.app.Object2D](phina.app.Object2D.md))
* [addChild](phina.app.Element.md#instance_addChild)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [addChildTo](phina.app.Element.md#instance_addChildTo)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [addChildAt](phina.app.Element.md#instance_addChildAt)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [getChildAt](phina.app.Element.md#instance_getChildAt)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [getChildByName](phina.app.Element.md#instance_getChildByName)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [getChildIndex](phina.app.Element.md#instance_getChildIndex)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [getParent](phina.app.Element.md#instance_getParent)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [getRoot](phina.app.Element.md#instance_getRoot)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [removeChild](phina.app.Element.md#instance_removeChild)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [remove](phina.app.Element.md#instance_remove)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [isAwake](phina.app.Element.md#instance_isAwake)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [wakeUp](phina.app.Element.md#instance_wakeUp)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [sleep](phina.app.Element.md#instance_sleep)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [fromJSON](phina.app.Element.md#instance_fromJSON)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [toJSON](phina.app.Element.md#instance_toJSON)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [on](phina.util.EventDispatcher.md#instance_on)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [off](phina.util.EventDispatcher.md#instance_off)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [fire](phina.util.EventDispatcher.md#instance_fire)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [flare](phina.util.EventDispatcher.md#instance_flare)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [one](phina.util.EventDispatcher.md#instance_one)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [has](phina.util.EventDispatcher.md#instance_has)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [clear](phina.util.EventDispatcher.md#instance_clear)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))


## Source code of methods (instance)

### <a name="instance_init"></a>init
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


