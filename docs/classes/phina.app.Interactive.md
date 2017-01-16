# phina.app.Interactive

super class : none

## Properties

### Class properties


### Instance properties (own)


### Instance properties (inherited)


## Methods

### Class methods


### Instance methods (own)

* init
* enable
* disable
* check

### Instance methods (inherited)


## Sources

* init
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
* enable
  ```javascript
  function () {
        this._enable = true;
        return this;
      }
  ```
* disable
  ```javascript
  function () {
        this._enable = false;
        return this;
      }
  ```
* check
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

