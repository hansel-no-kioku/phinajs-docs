[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.geom.Circle

super class : none

## Properties


### Instance properties (own)

* x : Number
* y : Number
* radius : Number


## Methods


### Instance methods (own)

* [init](#instance_init)
* [set](#instance_set)
* [moveTo](#instance_moveTo)
* [moveBy](#instance_moveBy)
* [contains](#instance_contains)
* [clone](#instance_clone)
* [toRect](#instance_toRect)
* [toArray](#instance_toArray)



## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (x, y, radius) {
      this.set(x, y, radius);
    }
```

### <a name="instance_set"></a>set
```javascript
function (x, y, radius) {
      this.x = x;
      this.y = y;
      this.radius = radius;

      return this;
    }
```

### <a name="instance_moveTo"></a>moveTo
```javascript
function (x, y) {
      this.x = x;
      this.y = y;
      return this;
    }
```

### <a name="instance_moveBy"></a>moveBy
```javascript
function (x, y) {
      this.x += x;
      this.y += y;
      return this;
    }
```

### <a name="instance_contains"></a>contains
```javascript
function (x, y) {
      var lenX = this.x-x;
      var lenY = this.y-y;
      var lenSquared = (lenX*lenX)+(lenY*lenY);

      return lenSquared <= this.radius*this.radius;
    }
```

### <a name="instance_clone"></a>clone
```javascript
function () {
      return phina.geom.Circle(this.x, this.y, this.radius);
    }
```

### <a name="instance_toRect"></a>toRect
```javascript
function () {
      var size = this.size;
      return phina.geom.Rect(this.x - this.radius, this.y - this.radius, size, size);
    }
```

### <a name="instance_toArray"></a>toArray
```javascript
function () {
      return [this.x, this.y, this.radius];
    }
```


