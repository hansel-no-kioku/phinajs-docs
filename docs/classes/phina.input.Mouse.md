[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.input.Mouse

super class : [phina.input.Input](phina.input.Input.md)

## Properties

### Class properties

* BUTTON_LEFT : Number
* BUTTON_MIDDLE : Number
* BUTTON_RIGHT : Number


### Instance properties (inherited)

* domElement : 
  * querySelector : Function
  * createElement : Function
  * addEventListener : Function
  * body : [object Object]
&ensp;&ensp;(from [phina.input.Input](phina.input.Input.md))
* x : Number&ensp;&ensp;(from [phina.input.Input](phina.input.Input.md))
* y : Number&ensp;&ensp;(from [phina.input.Input](phina.input.Input.md))
* dx : Number&ensp;&ensp;(from [phina.input.Input](phina.input.Input.md))
* dy : Number&ensp;&ensp;(from [phina.input.Input](phina.input.Input.md))
* fx : Number&ensp;&ensp;(from [phina.input.Input](phina.input.Input.md))
* fy : Number&ensp;&ensp;(from [phina.input.Input](phina.input.Input.md))

## Methods


### Instance methods (own)

* [init](#instance_init)
* [getButton](#instance_getButton)
* [getButtonDown](#instance_getButtonDown)
* [getButtonUp](#instance_getButtonUp)
* [getPointing](#instance_getPointing)
* [getPointingStart](#instance_getPointingStart)
* [getPointingEnd](#instance_getPointingEnd)

### Instance methods (inherited)

* [update](phina.input.Input.md#instance_update)&ensp;&ensp;(from [phina.input.Input](phina.input.Input.md))
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
function (domElement) {
      this.superInit(domElement);

      this.id = 0;

      var self = this;
      this.domElement.addEventListener('mousedown', function(e) {
        self._start(e.pointX, e.pointY, 1<<e.flags);
      });

      this.domElement.addEventListener('mouseup', function(e) {
        self._end(1<<e.flags);
      });
      this.domElement.addEventListener('mousemove', function(e) {
        self._move(e.pointX, e.pointY);
      });
    }
```

### <a name="instance_getButton"></a>getButton
```javascript
function (button) {
      if (typeof(button) == "string") {
        button = BUTTON_MAP[button];
      }
      
      return (this.now & button) != 0;
    }
```

### <a name="instance_getButtonDown"></a>getButtonDown
```javascript
function (button) {
      if (typeof(button) === 'string') {
        button = BUTTON_MAP[button];
      }

      return (this.start & button) != 0;
    }
```

### <a name="instance_getButtonUp"></a>getButtonUp
```javascript
function (button) {
      if (typeof(button) == "string") {
        button = BUTTON_MAP[button];
      }
      
      return (this.end & button) != 0;
    }
```

### <a name="instance_getPointing"></a>getPointing
```javascript
function () { return this.getButton("left"); }
```

### <a name="instance_getPointingStart"></a>getPointingStart
```javascript
function () { return this.getButtonDown("left"); }
```

### <a name="instance_getPointingEnd"></a>getPointingEnd
```javascript
function () { return this.getButtonUp("left"); }
```


