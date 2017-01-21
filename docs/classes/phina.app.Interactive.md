[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.app.Interactive

super class : none

## Properties


### Instance properties (own)

* app : phina.app.BaseApp
* multiTouch : Boolean
* cursor : 
  * normal : ''
  * hover : 'pointer'



## Methods


### Instance methods (own)

* [init](#instance_init)
* [enable](#instance_enable)
* [disable](#instance_disable)
* [check](#instance_check)



## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (app) {
      this.app = app;
      this._enable = true;
      this.multiTouch = true;
      this.cursor = {
        normal: '',
        hover: 'pointer',
      };

      this._holds = [];
      this.app.on('changescene', function() {
        this._holds.clear();
      }.bind(this));
    }
```

### <a name="instance_enable"></a>enable
```javascript
function () {
      this._enable = true;
      return this;
    }
```

### <a name="instance_disable"></a>disable
```javascript
function () {
      this._enable = false;
      return this;
    }
```

### <a name="instance_check"></a>check
```javascript
function (root) {
      // カーソルのスタイルを反映
      if (this.app.domElement) {
        if (this._holds.length > 0) {
          this.app.domElement.style.cursor = this.cursor.hover;
        }
        else {
          this.app.domElement.style.cursor = this.cursor.normal;
        }
      }

      if (!this._enable || !this.app.pointers) return ;
      this._checkElement(root);
    }
```


