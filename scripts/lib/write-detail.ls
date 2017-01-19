#------------------------------------------------------------------------------
# Write class detail page

require! {
  \prelude-ls : {is-type, empty, fold, any, values, obj-to-pairs}
  write
}

module.exports = (dest, detail) -->
  write (dest detail.class-name),
    '[TOP](../../README.md) > [Class List](../class-list.md) >\n\n' +
    "# #{detail.class-name}\n\n" +
    "super class : #{print-super-class detail.super-class}\n\n" +
    '## Properties\n\n' +
    (print-class-properties detail.class-properties) + \\n +
    (print-own-properties detail.own-properties) + \\n +
    (print-inherited-properties detail.inherited-properties) + \\n +
    '## Methods\n\n' +
    (print-class-methods detail.class-methods) + \\n +
    (print-own-methods detail.own-methods) + \\n +
    (print-inherited-methods detail.inherited-methods) + \\n +
    (print-code \class detail.class-methods) + \\n +
    (print-code \instance detail.own-methods) + \\n

# Class -> String
print-super-class = (super-class) ->
  name = super-class?::class-name
  if name? then "[#{name}](#{name}.md)" else \none

# Function -> String -> [[String, a, ...]] -> String
print-props = (print, title, props = []) -->
  | empty props => ''
  | _           => fold print, "### #{title}\n\n" props

# String -> [[String, a, ...]] -> String
print-property = (str, [k, v, o]) ->
  str + "* #{k} : #{print-type v}#{print-owner o}\n"

# String -> String -> [String, ...] -> String
print-own-method = (mark) -> (str, [k]) ->
  str + "* [#{k}](##{mark}_#{k})\n"

# String -> [String, a, ...] -> String
print-inherited-method = (str, [k, _, o]) ->
  console.log "Error : Unknown owner of #{k}." unless o?
  str + "* [#{k}](#{o}.md\#instance_#{k})#{print-owner o}\n"

# String -> [[String, a, ...]] -> String
print-properties = print-props print-property

# [[String, a, ...]] -> String
print-class-properties = print-properties 'Class properties'
print-own-properties = print-properties 'Instance properties (own)'
print-inherited-properties = print-properties 'Instance properties (inherited)'

print-class-methods =
  print-props (print-own-method \class ), 'Class methods'
print-own-methods =
  print-props (print-own-method \instance ), 'Instance methods (own)'
print-inherited-methods =
  print-props print-inherited-method, 'Instance methods (inherited)'

# String -> [String, Function, ...] -> String
print-code = (type, methods = []) -->
  unless empty methods
    "## Source code of methods (#{type})\n\n" +
    fold (print-method-source type), '' methods
  else
    ''

# String -> String -> [String, Function, ...] -> String
print-method-source = (mark) -> (str, [k, v, o]) ->
  str +
  "### <a name=\"#{mark}_#{k}\"></a>#{k}#{print-owner o}\n" +
  "```javascript\n#{v.to-string!}\n```\n\n"

# Maybe String -> String
print-owner = (owner) ->
  if owner? and owner isnt \own
    "#{'&ensp;' * 2}(from [#{owner}](#{owner}.md))"
  else
    ''
# a -> String
print-type = (value) ->
  | (klass = value?.class-name)?  => "[#{klass}](#{klass}.md)"
  | is-type \Object value         => print-object value
  | value?                        => typeof! value
  | _                             => \Unknown

# Object -> String
print-object = (obj) ->
  print-pair = (str, [k, v]) ->
    str + "  * #{k} : #{print-value v}\n"
  pairs = obj-to-pairs obj
  if empty pairs  => \Object
  else            => fold print-pair, \\n pairs

# a -> String
print-value = ->
  | is-type \Function it  => \Function
  | is-type \Array    it  => "[#{it.to-string!}]"
  | is-type \String   it  => "'#{it}'"
  | _                     => it?.to-string! ? it
