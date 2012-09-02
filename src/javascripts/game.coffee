class window.Game
  constructor: (width, height, selector) ->
    @canvas = new canvas(width, height, selector)
    @setupEvents()

    @state = new MenuState
    @changeState(@state)

    requestAnimFrame(@step)

  step: =>
    @canvas.fill "#000000"

    point = new Point 30, 30
    quad = new Quad point, 50, 50, "#FF0000"
    quad.draw @canvas

    requestAnimFrame @step

  setupEvents: =>
    @eventHandler = new EventHandler

    $('#canvas').on "click", (event) =>
      point = new Point event.layerX,event.layerY
      @eventHandler.click point

    $('#canvas').on "tap", (event) =>
      point = new Point event.layerX,event.layerY
      @eventHandler.tap point

  changeState: (state) ->
    oldState = @state
    @eventHandler.removeState(oldState)
    @state = state
    @eventHandler.registerState(@state)

$(document).ready ->
  window.game = new Game 320, 480, "canvas"

