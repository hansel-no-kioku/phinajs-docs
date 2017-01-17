[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.social.Twitter

super class : none

## Properties

### Class properties

* baseURL : String
* defaults : 
  * text : 'Hello, world!'
  * hashtags : 'javascript,phina'
  * url : undefined




## Methods

### Class methods

* [createURL](#class_createURL)

### Instance methods (own)

* [init](#instance_init)


## Source code of methods (class)

### <a name="class_createURL"></a>createURL
```javascript
function (options) {
        options = (options || {}).$safe(this.defaults);

        var queries = [];
        var euc = encodeURIComponent;
        options.forIn(function(key, value) {
          var str = key + '=' + euc(value);
          queries.push(str);
        });

        var url = '{baseURL}/{type}?{query}'.format({
          baseURL: this.baseURL,
          // type: options.type,
          type: 'tweet',
          query: queries.join('&'),
        });

        return url;
      }
```


## Source code of methods (instance)

### <a name="instance_init"></a>init
```javascript
function (options) {
    }
```


