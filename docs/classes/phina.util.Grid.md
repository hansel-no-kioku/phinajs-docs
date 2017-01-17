[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.util.Grid

super class : none

## Properties


### Instance properties (own)

* width : Number
* columns : Number
* loop : Boolean
* offset : Number


## Methods


### Instance methods (own)

* [init](#instance_init)
* [span](#instance_span)
* [unit](#instance_unit)
* [center](#instance_center)



## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function () {
      if (typeof arguments[0] === 'object') {
        var param = arguments[0];
        var width = param.width || 640;
        var columns = param.columns || 12;
        var loop = param.loop || false;
        var offset = param.offset || 0;
      }
      else {
        var width   = arguments[0] || 640;
        var columns = arguments[1] || 12;
        var loop    = arguments[2] || false;
        var offset = arguments[3] || 0;
      }

      this.width = width;
      this.columns = columns;
      this.loop = loop;
      this.offset = offset;
      this.unitWidth = this.width/this.columns;
    }
```

### <a name="instance_span"></a>span
```javascript
function (index) {
      if (this.loop) {
        index += this.columns;
        index %= this.columns;
      }
      return this.unitWidth * index + this.offset;
    }
```

### <a name="instance_unit"></a>unit
```javascript
function () {
      return this.unitWidth;
    }
```

### <a name="instance_center"></a>center
```javascript
function (offset) {
      var index = offset || 0;
      return (this.width/2) + (this.unitWidth * index);
    }
```


