[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.util.QueryString

super class : none

## Properties




## Methods

### Class methods

* [parse](#class_parse)
* [stringify](#class_stringify)



## Source code of methods (class)

### <a name="class_parse"></a>parse
```javascript
function (text, sep, eq, isDecode) {
        text = text || location.search.substr(1);
        sep = sep || '&';
        eq = eq || '=';
        var decode = (isDecode) ? decodeURIComponent : function(a) { return a; };
        return text.split(sep).reduce(function(obj, v) {
          var pair = v.split(eq);
          obj[pair[0]] = decode(pair[1]);
          return obj;
        }, {});
      }
```

### <a name="class_stringify"></a>stringify
```javascript
function (value, sep, eq, isEncode) {
        sep = sep || '&';
        eq = eq || '=';
        var encode = (isEncode) ? encodeURIComponent : function(a) { return a; };
        return Object.keys(value).map(function(key) {
          return key + eq + encode(value[key]);
        }).join(sep);
      }
```



