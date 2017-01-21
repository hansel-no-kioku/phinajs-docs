#------------------------------------------------------------------------------
# Get class details

require! {
  \prelude-ls : {
    is-type, concat, all, any, map, filter, reject, fold, foldr, obj-to-pairs
  }
  \object.entries : entries
  \./dummy-dom : {dummy-element}
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
  [klass] ++ klass::_hierarchies
  |> foldr (inherit klass::class-name), {}
  |> obj-to-pairs
  |> filter-phina
  |> map concat

# String -> Class -> Props -> Props
inherit = (own, klass, props) -->
  class-name = if klass::class-name is own then \own else klass::class-name
  get-own-props klass::, class-name
  |> (props with)
  |> add-instance-props klass, class-name

# Object -> String -> Props
get-own-props = (object, class-name) ->
  f = (p, k) -> p[k] = [(get-value k, object), class-name]; p
  fold f, {}, Object.get-own-property-names object

# Class -> String -> Props -> Props
add-instance-props = (klass, class-name, props) -->
  if (instance = get-instance klass)?
    obj-to-pairs instance
    |> fold (inherit-value class-name), ^^props
    |> fillup instance
  else
    props

# Class -> Maybe Object
get-instance = (klass) ->
  if klass::init?
    try
      klass init-args[klass::class-name]
    catch e
      console.log "#{klass::class-name} : #{e.message}"
      null
  else
    null

# String -> Props -> [key, value] -> Props
inherit-value = (class-name, props, [k, v]) -->
  if props[k]?
    props[k] = [v, props[k].1] if v? and not props[k].0?
  else
    props[k] = [v, class-name]
  props

# Object -> Props -> Props
fillup = (instance, props) -->
  f = (p, [k, [v, o]]) ->
    p[k] = [v ? (get-value k, instance), o]
    p
  fold f, {}, obj-to-pairs props

# String -> Object -> a
get-value = (key, obj) ->
  try
    obj[key]
  catch e
    null

# [[String, ...]] -> [[String, ...]]
filter-phina = (props) ->
  ignore-props = <[ constructor superInit superMethod superClass className ]>
  reject (|> (is /^_.*/) or (str) -> any (is str), ignore-props) . (.0), props

init-args =
  \phina.app.Interactive :
    on : ->
    dummy-name : \phina.app.BaseApp
  \phina.input.Input : dummy-element
  \phina.input.Mouce : dummy-element
  \phina.input.Touch : dummy-element
  \phina.input.TouchList : dummy-element
  \phina.display.DomApp :
    \domElement : dummy-element
  \phina.display.Sprite :
    \domElement : dummy-element
    dummy-name : \Image
  \phina.display.CanvasRenderer : dummy-element
  \phina.game.ManagerScene :
    \scene : dummy-name : \Scene
  \phina.game.LoadingScene : assets : {}
  \phina.util.Flow : ->
  \phina.box2d.Box2dBody :
    world :
      CreateBody : ->
        dummy-name : \Box2D.Dynamics.b2Body
      dummy-name : \Box2D.Dynamics.b2World
    type : \dynamic
    shape : \circle
