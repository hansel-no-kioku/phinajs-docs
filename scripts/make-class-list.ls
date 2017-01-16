#------------------------------------------------------------------------------
# Make class list page

require! {
  \prelude-ls : {fold, obj-to-pairs}
  write
  \./phina-class : {get-class-structure, get-version}
}

dest = \./docs/class-list.md

make-class-list = (depth, node) ->
  f = fold (str, pair) ->
    str +
      '  ' * depth +
      "* [#{pair.0}](classes/#{pair.0}.md)\n" +
      make-class-list depth + 1 pair.1
  f '' obj-to-pairs node

write dest,
  '# phina.js クラス一覧\n\n' +
  "version: #{get-version!}\n\n" +
  (make-class-list 0, get-class-structure!) + \\n +
  '※ Box2D 読み込み時\n'
