[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.util.Tween

super class : [phina.util.EventDispatcher](phina.util.EventDispatcher.md)

## Properties

### Class properties

* EASING : 
  * default : Function
  * linear : Function
  * swing : Function
  * easeInQuad : Function
  * easeOutQuad : Function
  * easeInOutQuad : Function
  * easeInCubic : Function
  * easeOutCubic : Function
  * easeInOutCubic : Function
  * easeOutInCubic : Function
  * easeInQuart : Function
  * easeOutQuart : Function
  * easeInOutQuart : Function
  * easeOutInQuart : Function
  * easeInQuint : Function
  * easeOutQuint : Function
  * easeInOutQuint : Function
  * easeOutInQuint : Function
  * easeInSine : Function
  * easeOutSine : Function
  * easeInOutSine : Function
  * easeOutInSine : Function
  * easeInExpo : Function
  * easeOutExpo : Function
  * easeInOutExpo : Function
  * easeOutInExpo : Function
  * easeInCirc : Function
  * easeOutCirc : Function
  * easeInOutCirc : Function
  * easeOutInCirc : Function
  * easeInElastic : Function
  * easeOutElastic : Function
  * easeInOutElastic : Function
  * easeOutInElastic : Function
  * easeInBack : Function
  * easeOutBack : Function
  * easeInOutBack : Function
  * easeOutInBack : Function
  * easeInBounce : Function
  * easeOutBounce : Function
  * easeInOutBounce : Function
  * easeOutInBounce : Function




## Methods


### Instance methods (own)

* [init](#instance_init)
* [fromTo](#instance_fromTo)
* [to](#instance_to)
* [from](#instance_from)
* [by](#instance_by)
* [yoyo](#instance_yoyo)
* [gain](#instance_gain)
* [forward](#instance_forward)
* [backward](#instance_backward)
* [seek](#instance_seek)

### Instance methods (inherited)

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
function (target) {
      this.superInit();

      this.time = 0;
    }
```

### <a name="instance_fromTo"></a>fromTo
```javascript
function (target, beginProps, finishProps, duration, easing) {
      this.target = target;
      this.beginProps = beginProps;
      this.finishProps = finishProps;
      this.duration = duration || 1000;
      this.easing = easing;

      // setup
      this.changeProps = {};
      for (var key in beginProps) {
          this.changeProps[key] = finishProps[key] - beginProps[key];
      }

      return this;
    }
```

### <a name="instance_to"></a>to
```javascript
function (target, finishProps, duration, easing) {
      var beginProps = {};

      for (var key in finishProps) {
        beginProps[key] = target[key];
      }

      this.fromTo(target, beginProps, finishProps, duration, easing);

      return this;
    }
```

### <a name="instance_from"></a>from
```javascript
function (target, beginProps, duration, easing) {
        var finishProps = {};

        for (var key in beginProps) {
          finishProps[key] = target[key];
          target[key] = beginProps[key];
        }

        this.fromTo(target, beginProps, finishProps, duration, easing);

        return this;
    }
```

### <a name="instance_by"></a>by
```javascript
function (target, props, duration, easing) {
      var beginProps = {};
      var finishProps = {};

      for (var key in props) {
        beginProps[key] = target[key];
        finishProps[key] = target[key] + props[key];
      }

      this.fromTo(target, beginProps, finishProps, duration, easing);

      return this;
    }
```

### <a name="instance_yoyo"></a>yoyo
```javascript
function () {
      var temp = this.beginProps;
      this.beginProps = this.finishProps;
      this.finishProps = temp;
      this.changeProps.forIn(function(key, value, index) {
        this.changeProps[key] = -value;
        this.target[key] = this.beginProps[key];
      }, this);
      // TODO: easing も反転させる
      // this.easing = easing;
      return this;
    }
```

### <a name="instance_gain"></a>gain
```javascript
function (time) {
      this.seek(this.time + time);
    }
```

### <a name="instance_forward"></a>forward
```javascript
function (time) {
      this.seek(this.time + time);
    }
```

### <a name="instance_backward"></a>backward
```javascript
function (time) {
      this.seek(this.time - time);
    }
```

### <a name="instance_seek"></a>seek
```javascript
function (time) {
      this.time = Math.clamp(time, 0, this.duration);

      this.beginProps.forIn(function(key, value) {
        var v = this.easing(this.time, value, this.changeProps[key], this.duration);
        this.target[key] = v;
      }, this);

      return this;
    }
```


