#------------------------------------------------------------------------------
# Make class list page

require! {
  \prelude-ls : {fold, obj-to-pairs}
  write
  \./lib/phina-class : {get-class-structure}
  \../bower_components/phina.js   # Use Object.prototype.accessor
}

# fix phina.VERSION
phina.VERSION = \0.2.1

dest = \./docs/class-list.md

structure = get-class-structure phina

# Number -> Object -> Object
make-class-list = (depth, node) ->
  f = fold (str, [k, v]) ->
    str +
    '  ' * depth + "* [#{k}](classes/#{k}.md)\n" +
    make-class-list depth + 1 v
  f '' obj-to-pairs node

# IO ()
write dest,
  '[Top](../README.md) >\n\n' +
  "# phina.js ver.#{phina.VERSION} Class List\n\n" +
  (make-class-list 0, structure) + \\n +
  '※ Box2D is option.\n'
