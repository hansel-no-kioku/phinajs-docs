[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.game.CountScene

super class : [phina.display.DisplayScene](phina.display.DisplayScene.md)

## Properties

### Class properties

* defaults : 
  * count : 3
  * width : 640
  * height : 960
  * fontColor : 'white'
  * fontSize : 164
  * backgroundColor : 'rgba(50, 50, 50, 1)'
  * exitType : 'auto'



### Instance properties (inherited)

* parent : Unknown&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* children : Array&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* awake : Boolean&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* tweener : [phina.accessory.Tweener](phina.accessory.Tweener.md)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* draggable : [phina.accessory.Draggable](phina.accessory.Draggable.md)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* flickable : [phina.accessory.Flickable](phina.accessory.Flickable.md)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* physical : [phina.accessory.Physical](phina.accessory.Physical.md)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* accessories : Array&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))

## Methods


### Instance methods (own)

* [init](#instance_init)

### Instance methods (inherited)

* [hitTest](phina.display.DisplayScene.md#instance_hitTest)&ensp;&ensp;(from [phina.display.DisplayScene](phina.display.DisplayScene.md))
* [exit](phina.app.Scene.md#instance_exit)&ensp;&ensp;(from [phina.app.Scene](phina.app.Scene.md))
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
* [attach](phina.app.Element.md#instance_attach)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [detach](phina.app.Element.md#instance_detach)&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* [on](phina.util.EventDispatcher.md#instance_on)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [off](phina.util.EventDispatcher.md#instance_off)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [fire](phina.util.EventDispatcher.md#instance_fire)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [flare](phina.util.EventDispatcher.md#instance_flare)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [one](phina.util.EventDispatcher.md#instance_one)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [has](phina.util.EventDispatcher.md#instance_has)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [clear](phina.util.EventDispatcher.md#instance_clear)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [addEventListener](phina.util.EventDispatcher.md#instance_addEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [removeEventListener](phina.util.EventDispatcher.md#instance_removeEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [clearEventListener](phina.util.EventDispatcher.md#instance_clearEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [hasEventListener](phina.util.EventDispatcher.md#instance_hasEventListener)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [dispatchEvent](phina.util.EventDispatcher.md#instance_dispatchEvent)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))
* [dispatchEventByType](phina.util.EventDispatcher.md#instance_dispatchEventByType)&ensp;&ensp;(from [phina.util.EventDispatcher](phina.util.EventDispatcher.md))


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (options) {
      this.superInit(options);

      options = (options || {}).$safe(phina.game.CountScene.defaults);

      this.backgroundColor = options.backgroundColor;

      this.fromJSON({
        children: {
          label: {
            className: 'phina.display.Label',
            arguments: {
              fill: options.fontColor,
              fontSize: options.fontSize,
              stroke: false,
            },
            x: this.gridX.center(),
            y: this.gridY.center(),
          },
        }
      });

      if (options.count instanceof Array) {
        this.countList = options.count.reverse();
      }
      else {
        this.countList = Array.range(1, options.count+1);
      }
      this.counter = this.countList.length;
      this.exitType = options.exitType;

      this._updateCount();
    }
```


