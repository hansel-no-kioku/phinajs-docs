#------------------------------------------------------------------------------
# Dummy document

module.exports =
  query-selector: -> dummy-canvas
  create-element: -> dummy-canvas
  add-event-listener: ->
  body: appendChild: ->
  is-dummy: true

dummy-canvas =
  get-context: -> dummy-context
  is-dummy: true

dummy-context =
  lineCap: ''
  lineJoin: ''
  is-dummy: true
