#------------------------------------------------------------------------------
# Phina class

global.Box2D = require \box2dweb

require! {
  \prelude-ls : {is-type, filter, fold, concat-map, values}
  \../bower_components/phina.js
}

# String -> Object -> [a]
select-type = (t, o) --> filter (is-type t), values o

# Class -> [Class]
get-hierarchies = -> [it] ++ it::_hierarchies

# Object -> [Class] -> Object
struct-hierarchies = (node, hierarchies) ->
  [...subs, sup] = hierarchies
  if sup?
    struct-hierarchies (node[sup::class-name] ?= {}), subs
  node

# Object -> Class -> Object
struct-classes = (node, klass) -> struct-hierarchies node, get-hierarchies klass

# [Class] -> Object
make-class-structure = fold struct-classes, {}

# phina -> [Class]
make-class-list = (concat-map (select-type \Function )) . (select-type \Object)

# static values
classes = make-class-list phina
structure = make-class-structure classes

export
  get-class-list = -> classes
  get-class-structure = -> structure
  get-version = -> phina.VERSION
