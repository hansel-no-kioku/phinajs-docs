[TOP](../../README.md) > [Class List](../class-list.md) >

# phina.util.Ajax

super class : none

## Properties

### Class properties

* defaults : 
  * type : 'GET'
  * contentType : 'application/x-www-form-urlencoded'
  * responseType : 'json'
  * data : null
  * url : ''




## Methods

### Class methods

* [request](#class_request)
* [get](#class_get)
* [post](#class_post)
* [put](#class_put)
* [del](#class_del)



## Source code of methods (class)

### <a name="class_request"></a>request
```javascript
function (options) {
        var data = ({}).$safe(options, this.defaults);

        var xhr = new XMLHttpRequest();
        var flow = phina.util.Flow(function(resolve) {
          xhr.onreadystatechange = function() {
            if (xhr.readyState === 4) {
              if ([200, 201, 0].indexOf(xhr.status) !== -1) {
                resolve(xhr.response);
              }
            }
          };

          xhr.open(data.type, data.url);
          xhr.responseType = data.responseType;
          xhr.send(null);
        });

        return flow;
      }
```

### <a name="class_get"></a>get
```javascript
function (url) {
        return this.request({
          type: 'GET',
          url: url,
        });
      }
```

### <a name="class_post"></a>post
```javascript
function (url) {
        return this.request({
          type: 'POST',
          url: url,
        });
      }
```

### <a name="class_put"></a>put
```javascript
function (url) {
        return this.request({
          type: 'PUT',
          url: url,
        });
      }
```

### <a name="class_del"></a>del
```javascript
function (url) {
        return this.request({
          type: 'DELETE',
          url: url,
        });
      }
```



