[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.asset.SoundManager

super class : none

## Properties

### Class properties

* volume : Number
* musicVolume : Number
* muteFlag : Boolean
* currentMusic : Unknown



## Methods

### Class methods

* [play](#class_play)
* [stop](#class_stop)
* [pause](#class_pause)
* [fade](#class_fade)
* [setVolume](#class_setVolume)
* [getVolume](#class_getVolume)
* [mute](#class_mute)
* [unmute](#class_unmute)
* [isMute](#class_isMute)
* [playMusic](#class_playMusic)
* [stopMusic](#class_stopMusic)
* [pauseMusic](#class_pauseMusic)
* [resumeMusic](#class_resumeMusic)
* [setVolumeMusic](#class_setVolumeMusic)
* [getVolumeMusic](#class_getVolumeMusic)



## Source code of methods (class)

### <a name="class_play"></a>play
```javascript
function (name) {
        var sound = phina.asset.AssetManager.get('sound', name);

        sound.volume = this.getVolume();
        sound.play();

        return sound;
      }
```

### <a name="class_stop"></a>stop
```javascript
function () {
        // TODO: 
      }
```

### <a name="class_pause"></a>pause
```javascript
function () {
        // TODO: 
      }
```

### <a name="class_fade"></a>fade
```javascript
function () {
        // TODO: 
      }
```

### <a name="class_setVolume"></a>setVolume
```javascript
function (volume) {
        this.volume = volume;
      }
```

### <a name="class_getVolume"></a>getVolume
```javascript
function () {
        return this.volume;
      }
```

### <a name="class_mute"></a>mute
```javascript
function () {
        this.muteFlag = true;
        if (this.currentMusic) {
          this.currentMusic.volume = 0;
        }
        return this;
      }
```

### <a name="class_unmute"></a>unmute
```javascript
function () {
        this.muteFlag = false;
        if (this.currentMusic) {
          this.currentMusic.volume = this.getVolumeMusic();
        }
        return this;
      }
```

### <a name="class_isMute"></a>isMute
```javascript
function () {
        return this.muteFlag;
      }
```

### <a name="class_playMusic"></a>playMusic
```javascript
function (name, fadeTime, loop) {
        loop = (loop !== undefined) ? loop : true;

        if (this.currentMusic) {
          this.stopMusic(fadeTime);
        }

        var music = phina.asset.AssetManager.get('sound', name);

        music.setLoop(loop);
        music.play();

        if (fadeTime > 0) {
          var count = 32;
          var counter = 0;
          var unitTime = fadeTime/count;
          var volume = this.getVolumeMusic();

          music.volume = 0;
          var id = setInterval(function() {
            counter += 1;
            var rate = counter/count;
            music.volume = rate*volume;

            if (rate >= 1) {
              clearInterval(id);
              return false;
            }

            return true;
          }, unitTime);
        }
        else {
          music.volume = this.getVolumeMusic();
        }

        this.currentMusic = music;

        return this.currentMusic;
      }
```

### <a name="class_stopMusic"></a>stopMusic
```javascript
function (fadeTime) {
        if (!this.currentMusic) { return ; }

        var music = this.currentMusic;
        this.currentMusic = null;

        if (fadeTime > 0) {
          var count = 32;
          var counter = 0;
          var unitTime = fadeTime/count;
          var volume = this.getVolumeMusic();

          music.volume = 0;
          var id = setInterval(function() {
            counter += 1;
            var rate = counter/count;
            music.volume = volume*(1-rate);

            if (rate >= 1) {
              music.stop();
              clearInterval(id);
              return false;
            }

            return true;
          }, unitTime);
        }
        else {
          music.stop();
        }
      }
```

### <a name="class_pauseMusic"></a>pauseMusic
```javascript
function () {
        if (!this.currentMusic) { return ; }
        this.currentMusic.pause();
      }
```

### <a name="class_resumeMusic"></a>resumeMusic
```javascript
function () {
        if (!this.currentMusic) { return ; }
        this.currentMusic.resume();
      }
```

### <a name="class_setVolumeMusic"></a>setVolumeMusic
```javascript
function (volume) {
        this.musicVolume = volume;
        if (this.currentMusic) {
          this.currentMusic.volume = volume;
        }

        return this;
      }
```

### <a name="class_getVolumeMusic"></a>getVolumeMusic
```javascript
function () {
        return this.musicVolume;
      }
```



