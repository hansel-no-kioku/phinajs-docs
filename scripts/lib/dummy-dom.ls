#------------------------------------------------------------------------------
# Dummy document

dummy-document =
  dummy-name: \Document
  query-selector: -> dummy-element
  create-element: -> dummy-element
  add-event-listener: ->
  body: appendChild: ->

dummy-element =
  dummy-name: \Element
  width: 64
  height: 64
  style:
    position: \fixed
    margin: \0px
    padding: \0px
    left: \0px
    top: \0px
  addEventListener: ->
  get-context: -> dummy-context

dummy-context =
  dummy-name: \CanvasRenderingContext2D
  lineCap: ''
  lineJoin: ''
  save: ->
  restore: ->
  fillStyle: ''
  fillRect: ->
  set-transform: ->

export dummy-document, dummy-element, dummy-context
