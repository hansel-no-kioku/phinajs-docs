#------------------------------------------------------------------------------
# Phina class

require! {
  \prelude-ls : {is-type, filter, fold, concat-map, values}
  \./dummy-dom : {dummy-document, dummy-element, dummy-audio-context}
}

global.Box2D = require \box2dweb
global.document = dummy-document
global.location = href: \URL
global.Image = -> dummy-element
global.CanvasRenderingContext2D = {}
global.AudioContext = dummy-audio-context
global.addEventListener = ->
global.innerWidth = 640
global.innerHeight = 960
global.window = global

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

export
  get-class-list = make-class-list
  get-class-structure = make-class-structure . make-class-list
