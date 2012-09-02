class window.Point
  constructor: (@x, @y) ->

class window.Line
  constructor: (@start, @finish, @width, @color) ->

  draw: (canvas) ->
    canvas.line(@start.x, @start.y, @finish.x, @finish.y, @width, @color)
