class window.Game
  constructor: (width, height, selector) ->
    @canvas = new canvas(width, height, selector)
    @canvas.fill "#000000"

$(document).ready ->
  new Game 640, 480, "canvas"

