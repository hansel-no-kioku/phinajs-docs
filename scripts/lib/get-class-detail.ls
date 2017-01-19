#------------------------------------------------------------------------------
# Get class details

require! {
  \prelude-ls : {
    is-type, concat, all, any, map, filter, reject, fold, foldr, obj-to-pairs
  }
  \object.entries : entries
}

module.exports = (klass) ->
  props = get-props klass

  class-name: klass::class-name
  super-class: klass::super-class
  class-properties: get-class-props reject, klass
  class-methods: get-class-props filter, klass
  own-properties: get-own-properties props
  own-methods: get-own-methods props
  inherited-properties: get-inherited-properties props
  inherited-methods: get-inherited-methods props

# Function -> Function -> [[String, ...]] -> [[String, ...]]
get-props-by = (own, func, props) -->
  props
  |> own (is \own) . (.2)
  |> func (is-type \Function) . (.1)

# [[String, ...]] -> [[String, ...]]
get-own-properties = get-props-by filter, reject
get-own-methods = get-props-by filter, filter
get-inherited-properties = get-props-by reject, reject
get-inherited-methods = get-props-by reject, filter

# Function -> Class -> [[String, ...]]
get-class-props = (func, klass) ->
  func (is-type \Function) . (.1), filter-phina entries klass

# Class -> [[String, ...]]
get-props = (klass) ->
  klass::_hierarchies
  |> foldr ((k, p) -> p with get-own-props k, k::class-name), {}
  |> (with get-own-props klass, \own)
  |> obj-to-pairs
  |> filter-phina
  |> map concat
  |> fillup-props klass

# Class -> String -> a
get-own-props = (klass, class-name) ->
  get-value = (c, k) ->
    try
      c::[k]
    catch e
      null
  f = (p, k) -> p[k] = [(get-value klass, k), class-name]; p
  fold f, {}, Object.get-own-property-names klass::

# Class -> [[String, a, ...]] -> [[String, a, ...]]
fillup-props = (klass, props) -->
  if not is-completed props and klass::init? then
    try
      map (fillup-prop klass!), props
    catch e
      console.log "#{klass::class-name} : #{e.message}"
      props
  else
    props

# Object -> [String, a, ...] -> [String, a, ...]
fillup-prop = (instance, [k, v, ...xs]:prop) -->
  | v?  => prop
  | _   => [k, instance[k], ...xs]

# [[String, a, ...]] -> Boolean
is-completed = all (?) . (.1)

# [[String, ...]] -> [[String, ...]]
filter-phina = (props) ->
  ignore-props = <[ constructor superInit superMethod superClass className ]>
  reject (|> (is /^_.*/) or (str) -> any (is str), ignore-props) . (.0), props
