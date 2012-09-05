class window.Point
  constructor: (@x, @y) ->

class window.Line
  constructor: (@start, @finish, @width, @color) ->

  draw: (canvas) ->
    oldStrokeStyle = canvas.context.strokeStyle
    canvas.context.strokeStyle = @color
    canvas.context.lineWidth = @width
    canvas.context.beginPath()
    canvas.context.moveTo @start.x, @start.y
    canvas.context.lineTo @finish.x, @finish.y
    canvas.context.stroke()
    canvas.context.closePath()
    canvas.context.strokeStyle = oldStrokeStyle

class window.Triangle
  constructor: (@point1, @point2, @point3, @color) ->

  draw: (canvas) ->
    canvas.triangle(@point1.x, @point1.y, @point2.x, @point2.y,
      @point3.x, @point3.y, @color)

class window.Quad
  constructor: (@point1, @width, @height, @color) ->

  draw: (canvas) ->
    canvas.quad(@point1.x, @point1.y, @width, @height, @color)

