class window.Game
  constructor: (width, height, selector) ->
    @canvas = new canvas(width, height, selector)
    @player = new Player
    @player.play("/music/01.mod")
    @eventHandler = new EventHandler

    $('#canvas').on "click", (event) =>
      point = new Point event.layerX,event.layerY
      @eventHandler.tap point

    requestAnimFrame(@step)

  step: =>
    @canvas.fill "#000000"

    point = new Point 30, 30
    quad = new Quad point, 50, 50, "#FF0000"
    quad.draw @canvas

    requestAnimFrame @step

$(document).ready ->
  window.game = new Game 640, 480, "canvas"

