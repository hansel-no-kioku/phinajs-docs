#------------------------------------------------------------------------------
# Make class detail page

require! {
  \prelude-ls : {each, map}
  \./lib/phina-class : {get-class-list}
  \./lib/get-class-detail
  \./lib/write-detail
  \../bower_components/phina.js   # Use Object.prototype.accessor
}

# String -> String
dest = -> "./docs/classes/#{it}.md"

# IO ()
each (write-detail dest) <| map get-class-detail <| get-class-list <| phina
