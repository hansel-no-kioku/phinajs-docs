[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.display.CanvasRenderer

super class : none

## Properties




## Methods


### Instance methods (own)

* [init](#instance_init)
* [render](#instance_render)
* [renderChildren](#instance_renderChildren)
* [renderObject](#instance_renderObject)



## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (canvas) {
      this.canvas = canvas;
      this._context = this.canvas.context;
    }
```

### <a name="instance_render"></a>render
```javascript
function (scene) {
      this.canvas.clear();
      if (scene.backgroundColor) {
        this.canvas.clearColor(scene.backgroundColor);
      }
      
      this._context.save();
      this.renderChildren(scene);
      this._context.restore();
    }
```

### <a name="instance_renderChildren"></a>renderChildren
```javascript
function (obj) {
      // 子供たちも実行
      if (obj.children.length > 0) {
        var tempChildren = obj.children.slice();
        for (var i=0,len=tempChildren.length; i<len; ++i) {
          this.renderObject(tempChildren[i]);
        }
      }
    }
```

### <a name="instance_renderObject"></a>renderObject
```javascript
function (obj) {
      if (obj.visible === false) return ;

      obj._calcWorldMatrix && obj._calcWorldMatrix();
      obj._calcWorldAlpha && obj._calcWorldAlpha();

      var context = this.canvas.context;

      context.globalAlpha = obj._worldAlpha;
      context.globalCompositeOperation = obj.blendMode;

      if (obj._worldMatrix) {
        // 行列をセット
        var m = obj._worldMatrix;
        context.setTransform( m.m00, m.m10, m.m01, m.m11, m.m02, m.m12 );
      }

      if (obj.clip) {

        context.save();

        obj.clip(this.canvas);
        context.clip();

        if (obj.draw) obj.draw(this.canvas);

        // 子供たちも実行
        if (obj.renderChildBySelf === false && obj.children.length > 0) {
            var tempChildren = obj.children.slice();
            for (var i=0,len=tempChildren.length; i<len; ++i) {
                this.renderObject(tempChildren[i]);
            }
        }

        context.restore();
      }
      else {
        if (obj.draw) obj.draw(this.canvas);

        // 子供たちも実行
        if (obj.renderChildBySelf === false && obj.children.length > 0) {
          var tempChildren = obj.children.slice();
          for (var i=0,len=tempChildren.length; i<len; ++i) {
            this.renderObject(tempChildren[i]);
          }
        }

      }
    }
```


