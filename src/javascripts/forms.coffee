class window.Point
  constructor: (@x, @y) ->

class window.Line
  constructor: (@start, @finish, @width, @color) ->

  draw: (canvas) ->
    canvas.line(@start.x, @start.y, @finish.x, @finish.y, @width, @color)

class window.Triangle
  constructor: (@point1, @point2, @point3, @color) ->

  draw: (canvas) ->
    canvas.triangle(@point1.x, @point1.y, @point2.x, @point2.y,
      @point3.x, @point3.y, @color)
