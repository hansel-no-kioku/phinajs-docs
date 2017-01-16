#------------------------------------------------------------------------------
# Make class detail page

# TODO: classメソッドのソース表示対応
# TODO: プロパティやメソッドの継承元表示
# TODO: ファイル分割等リファクタリング

require! {
  \prelude-ls : {is-type, any, each, map, fold, filter, reject, obj-to-pairs}
  write
  \./phina-class : {get-class-list}
}

dest = -> "./docs/classes/#{it}.md"

make-class-detail = (klass) ->
  class-name: klass::class-name
  super-class: klass::super-class
  class-properties: get-own-properties klass
  own-properties: get-own-properties klass::
  inherited-properties: get-inherited-properties klass::
  class-methods: get-own-methods klass
  own-methods: get-own-methods klass::
  inherited-methods: get-inherited-methods klass::

get-props-by = (own, func, obj) -->
  func (is-type \Function) . (.1), get-props own, obj

get-props = (own, obj) -->
    filter-phina own (-> obj.has-own-property it) . (.0), obj-to-pairs obj

filter-phina = (props) ->
  ignore-props = <[ constructor superInit superMethod superClass ]>
  reject (|> (is /_.*/) or (str) -> any (is str), ignore-props) . (.0), props

get-own-properties = get-props-by filter, reject
get-inherited-properties = get-props-by reject, reject
get-own-methods = get-props-by filter, filter
get-inherited-methods = get-props-by reject, filter

write-detail = (detail) ->
  write (dest detail.class-name),
    "# #{detail.class-name}\n\n" +
    "super class : #{print-super-class detail.super-class}\n\n" +
    '## Properties\n\n' +
    '### Class properties\n\n' +
    (fold print-property, '' detail.class-properties) + \\n +
    '### Instance properties (own)\n\n' +
    (fold print-property, '' detail.own-properties) + \\n +
    '### Instance properties (inherited)\n\n' +
    (fold print-property, '' detail.inherited-properties) + \\n +
    '## Methods\n\n' +
    '### Class methods\n\n' +
    (fold print-method, '' detail.class-methods) + \\n +
    '### Instance methods (own)\n\n' +
    (fold print-method, '' detail.own-methods) + \\n +
    '### Instance methods (inherited)\n\n' +
    (fold print-method, '' detail.inherited-methods) + \\n +
    '## Sources\n\n' +
    (fold print-method-source, '' detail.own-methods) + \\n

print-super-class = (super-class) ->
  name = super-class?::class-name
  if name? then "[#{name}](#{name}.md)" else \none
print-property = (str, prop) -> str + "* #{prop.0} : #{typeof! prop.1}\n"
print-method = (str, method) -> str + "* #{method.0}\n"
print-method-source = (str, method) ->
  (print-method ...) +
  (indent "```javascript\n#{method.1.to-string!}\n```") + \\n

indent = (* \\n) . (map ('  ' +)) . (/ \\n)

(each write-detail) <| (map make-class-detail) <| get-class-list!
