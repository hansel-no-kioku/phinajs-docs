
global.Box2D = require \box2dweb

require! {
  \prelude-ls : {is-type, each, filter, concat-map,  fold, values}
  pug
  write
  \./bower_components/phina.js
  \./lib/monad-p : {monad-p: p, promisize-api}
}

select-type = (t, o) --> filter (is-type t), values o

get-hierarchies = -> [it] ++ it::_hierarchies

struct-hierarchies = (node, hierarchies) ->
  [...subs, sup] = hierarchies
  if sup?
    struct-hierarchies (node[sup::class-name] ?= {}), subs
  node

struct-classes = (node, klass) -> struct-hierarchies node, get-hierarchies klass

display-structure = (depth, structure) ->
  for k, v of structure
    unless k is \_class
      console.log '  ' * depth + k
      display-structure depth + 1, v

classes = concat-map (select-type \Function ), select-type \Object phina
class-structure = fold struct-classes, {} classes
# display-structure 0, class-structure

options = {classes, class-structure, +pretty}

render = (t) -> promisize-api pug.render-file t, _
write-file = (f) -> promisize-api write f, _
render-file = (f, t) --> (render t) `p'>=>'` (write-file f)

(render-file \./doc/index.html \./templete/index.pug) options

# for k, v of phina.app.Element::
#   console.log "#{k}: #{typeof v}"

# each (-> console.log it::class-name), phina.display.Shape::_hierarchies
