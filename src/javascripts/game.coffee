class window.Game
  constructor: (width, height, selector) ->
    @canvas = new canvas(width, height, selector)
    @canvas.fill "#000000"

    point1 = new Point 30, 30
    point2 = new Point 320, 240
    point3 = new Point 480, 480

    triangle = new Triangle point1, point2, point3, "#FF0000"
    triangle.draw(@canvas)


$(document).ready ->
  new Game 640, 480, "canvas"

