[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.game.ResultScene

super class : [phina.display.DisplayScene](phina.display.DisplayScene.md)

## Properties

### Class properties

* defaults : 
  * score : 16
  * message : 'this is phina.js project.'
  * hashtags : 'phina_js,game,javascript'
  * url : 'URL'
  * fontColor : 'white'
  * backgroundColor : 'hsl(200, 80%, 64%)'
  * backgroundImage : ''


### Instance properties (own)

* scoreText : [phina.display.Label](phina.display.Label.md)
* scoreLabel : [phina.display.Label](phina.display.Label.md)
* messageLabel : [phina.display.Label](phina.display.Label.md)
* shareButton : [phina.ui.Button](phina.ui.Button.md)
* playButton : [phina.ui.Button](phina.ui.Button.md)

### Instance properties (inherited)

* backgroundColor : String&ensp;&ensp;(from [phina.display.DisplayScene](phina.display.DisplayScene.md))
* canvas : [phina.graphics.Canvas](phina.graphics.Canvas.md)&ensp;&ensp;(from [phina.display.DisplayScene](phina.display.DisplayScene.md))
* renderer : [phina.display.CanvasRenderer](phina.display.CanvasRenderer.md)&ensp;&ensp;(from [phina.display.DisplayScene](phina.display.DisplayScene.md))
* width : Number&ensp;&ensp;(from [phina.display.DisplayScene](phina.display.DisplayScene.md))
* height : Number&ensp;&ensp;(from [phina.display.DisplayScene](phina.display.DisplayScene.md))
* gridX : [phina.util.Grid](phina.util.Grid.md)&ensp;&ensp;(from [phina.display.DisplayScene](phina.display.DisplayScene.md))
* gridY : [phina.util.Grid](phina.util.Grid.md)&ensp;&ensp;(from [phina.display.DisplayScene](phina.display.DisplayScene.md))
* interactive : Boolean&ensp;&ensp;(from [phina.display.DisplayScene](phina.display.DisplayScene.md))
* children : Array&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
* parent : Unknown&ensp;&ensp;(from [phina.app.Element](phina.app.Element.md))
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

* [setInteractive](phina.display.DisplayScene.md#instance_setInteractive)&ensp;&ensp;(from [phina.display.DisplayScene](phina.display.DisplayScene.md))
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
function (params) {
      params = ({}).$safe(params, phina.game.ResultScene.defaults);
      this.superInit(params);

      var message = params.message.format(params);

      this.backgroundColor = params.backgroundColor;

      this.fromJSON({
        children: {
          scoreText: {
            className: 'phina.display.Label',
            arguments: {
              text: 'score',
              fill: params.fontColor,
              stroke: null,
              fontSize: 48,
            },
            x: this.gridX.span(8),
            y: this.gridY.span(4),
          },
          scoreLabel: {
            className: 'phina.display.Label',
            arguments: {
              text: params.score+'',
              fill: params.fontColor,
              stroke: null,
              fontSize: 72,
            },
            x: this.gridX.span(8),
            y: this.gridY.span(6),
          },

          messageLabel: {
            className: 'phina.display.Label',
            arguments: {
              text: message,
              fill: params.fontColor,
              stroke: null,
              fontSize: 32,
            },
            x: this.gridX.center(),
            y: this.gridY.span(9),
          },

          shareButton: {
            className: 'phina.ui.Button',
            arguments: [{
              text: '★',
              width: 128,
              height: 128,
              fontColor: params.fontColor,
              fontSize: 50,
              cornerRadius: 64,
              fill: 'rgba(240, 240, 240, 0.5)',
              // stroke: '#aaa',
              // strokeWidth: 2,
            }],
            x: this.gridX.center(-3),
            y: this.gridY.span(12),
          },
          playButton: {
            className: 'phina.ui.Button',
            arguments: [{
              text: '▶',
              width: 128,
              height: 128,
              fontColor: params.fontColor,
              fontSize: 50,
              cornerRadius: 64,
              fill: 'rgba(240, 240, 240, 0.5)',
              // stroke: '#aaa',
              // strokeWidth: 2,
            }],
            x: this.gridX.center(3),
            y: this.gridY.span(12),

            interactive: true,
            onpush: function() {
              this.exit();
            }.bind(this),
          },
        }
      });

      if (params.exitType === 'touch') {
        this.on('pointend', function() {
          this.exit();
        });
      }

      this.shareButton.onclick = function() {
        var text = 'Score: {0}\n{1}'.format(params.score, message);
        var url = phina.social.Twitter.createURL({
          text: text,
          hashtags: params.hashtags,
          url: params.url,
        });
        window.open(url, 'share window', 'width=480, height=320');
      };
    }
```


