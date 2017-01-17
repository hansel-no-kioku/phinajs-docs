[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.asset.AssetManager

super class : none

## Properties

### Class properties

* assets : 
  * image : [object Object]
  * sound : [object Object]
  * spritesheet : [object Object]




## Methods

### Class methods

* [get](#class_get)
* [set](#class_set)
* [contains](#class_contains)



## Source code of methods (class)

### <a name="class_get"></a>get
```javascript
function (type, key) {
        return this.assets[type] && this.assets[type][key];
      }
```

### <a name="class_set"></a>set
```javascript
function (type, key, asset) {
        if (!this.assets[type]) {
          this.assets[type] = {};
        }
        this.assets[type][key] = asset;
      }
```

### <a name="class_contains"></a>contains
```javascript
function (type, key) {
        return ;
      }
```



