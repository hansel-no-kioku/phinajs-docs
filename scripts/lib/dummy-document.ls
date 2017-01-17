#------------------------------------------------------------------------------
# Dummy document

module.exports =
  query-selector: -> dummy-canvas
  create-element: -> dummy-canvas
  add-event-listener: ->
  body: appendChild: ->

dummy-canvas =
  get-context: -> dummy-context

dummy-context =
  lineCap: ''
  lineJoin: ''
