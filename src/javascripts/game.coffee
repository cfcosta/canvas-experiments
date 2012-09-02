class window.Game
  constructor: (width, height, selector) ->
    @canvas = new canvas(width, height, selector)
    @canvas.fill "#000000"

    startPoint = new Point 0, 0
    finishPoint = new Point 640, 480

    line = new Line startPoint, finishPoint, 1, "#FF0000"
    line.draw @canvas

$(document).ready ->
  new Game 640, 480, "canvas"

