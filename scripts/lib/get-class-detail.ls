#------------------------------------------------------------------------------
# Get class details

require! {
  \prelude-ls : {is-type, all, any, map, filter, reject, obj-to-pairs}
}

module.exports = (klass) ->
  fillup = fillup-props klass

  class-name: klass::class-name
  super-class: klass::super-class
  class-properties: get-own-properties klass
  class-methods: get-own-methods klass
  own-properties: fillup get-own-properties klass::
  own-methods: get-own-methods klass::
  inherited-properties: fillup get-inherited-properties klass
  inherited-methods: get-inherited-methods klass

# Function -> Function -> Object -> [a]
get-props-by = (own, func, obj) -->
  func (is-type \Function ) . (.1), get-props own, obj

# Function -> Class -> [a]
get-inherited-props-by = (func, klass) -->
  add-owner klass <| get-props-by reject, func, klass::

# Object -> [a]
get-own-properties = get-props-by filter, reject
get-own-methods = get-props-by filter, filter
get-inherited-properties = get-inherited-props-by reject
get-inherited-methods = get-inherited-props-by filter

# Function -> Object -> [a]
get-props = (own, obj) -->
    filter-phina own (-> obj.has-own-property it) . (.0), obj-to-pairs obj

# [[String, a]] -> [[String, a]]
filter-phina = (props) ->
  ignore-props = <[ constructor superInit superMethod superClass ]>
  reject (|> (is /^_.*/) or (str) -> any (is str), ignore-props) . (.0), props

# Class -> [[String, a]] ->[[String, a, String]]
add-owner = (klass) -> map -> it ++ get-owner it, klass::?._hierarchies

# [String, a] -> [Class]
get-owner = (prop, [x, ...xs]?) -->
  switch
  | x?  => (if is-owner prop, x then x::class-name else get-owner prop, xs)
  | _   => null

# [String, a] -> Class -> Boolean
is-owner = ([k, _], klass) --> klass::has-own-property k

# Class -> [[String, a, ...]] -> [[String, a, ...]]
fillup-props = (klass, props) -->
  if klass::init? then
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
