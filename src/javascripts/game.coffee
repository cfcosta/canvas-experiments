class window.Game
  constructor: (width, height, selector) ->
    @canvas = new canvas(width, height, selector)
    requestAnimFrame(@step)

  step: =>
    @canvas.fill "#000000"

    point = new Point 30, 30
    quad = new Quad point, 50, 50, "#FF0000"
    quad.draw(@canvas)

    requestAnimFrame(@step)

$(document).ready ->
  new Game 640, 480, "canvas"

