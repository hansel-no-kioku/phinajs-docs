# phina.display.CanvasApp

super class : [phina.display.DomApp](phina.display.DomApp.md)

## Properties

### Class properties

* defaults : Object

### Instance properties (own)


### Instance properties (inherited)

* domElement : Null
* awake : Null

## Methods

### Class methods


### Instance methods (own)

* init
* fitScreen

### Instance methods (inherited)

* run
* replaceScene
* pushScene
* popScene
* start
* stop
* enableStats
* enableDatGUI
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
        options = (options || {}).$safe(phina.display.CanvasApp.defaults);
        
        if (!options.query && !options.domElement) {
          options.domElement = document.createElement('canvas');
          if (options.append) {
            document.body.appendChild(options.domElement);
          }
        }
        this.superInit(options);
  
  
        this.gridX = phina.util.Grid({
          width: options.width,
          columns: options.columns,
        });
        this.gridY = phina.util.Grid({
          width: options.height,
          columns: options.columns,
        });
  
        this.canvas = phina.graphics.Canvas(this.domElement);
        this.canvas.setSize(options.width, options.height);
  
        this.backgroundColor = (options.backgroundColor !== undefined) ? options.backgroundColor : 'white';
  
        this.replaceScene(phina.display.DisplayScene({
          width: options.width,
          height: options.height,
        }));
  
        if (options.fit) {
          this.fitScreen();
        }
  
        if (options.pixelated) {
          // チラつき防止
          // https://drafts.csswg.org/css-images/#the-image-rendering
          this.domElement.style.imageRendering = 'pixelated';
        }
  
        // pushScene, popScene 対策
        this.on('push', function() {
          // onenter 対策で描画しておく
          this._draw();
        });
      }
  ```
* fitScreen
  ```javascript
  function () {
        this.canvas.fitScreen();
      }
  ```

