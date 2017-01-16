# phina.game.ResultScene

super class : [phina.display.DisplayScene](phina.display.DisplayScene.md)

## Properties

### Class properties

* defaults : Object

### Instance properties (own)


### Instance properties (inherited)

* parent : Null
* children : Null
* awake : Boolean

## Methods

### Class methods


### Instance methods (own)

* init

### Instance methods (inherited)

* hitTest
* exit
* addChild
* addChildTo
* addChildAt
* getChildAt
* getChildByName
* getChildIndex
* getParent
* getRoot
* removeChild
* remove
* isAwake
* wakeUp
* sleep
* fromJSON
* toJSON
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
  function (params) {
        this.superInit(params);
  
        params = ({}).$safe(params, phina.game.ResultScene.defaults);
  
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

