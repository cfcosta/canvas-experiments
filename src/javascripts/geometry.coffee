class window.Point
  constructor: (@x, @y) ->

class window.Line
  constructor: (@start, @finish, @width, @color) ->

  draw: (canvas) ->
    canvas.context.strokeStyle = @color
    canvas.context.lineWidth = @width
    canvas.context.beginPath()
    canvas.context.moveTo @start.x, @start.y
    canvas.context.lineTo @finish.x, @finish.y
    canvas.context.stroke()
    canvas.context.closePath()

class window.Triangle
  constructor: (@point1, @point2, @point3, @color) ->

  draw: (canvas) ->
    canvas.context.fillStyle = @color
    canvas.context.beginPath()
    canvas.context.moveTo(@point1.x, @point1.y)
    canvas.context.lineTo(@point2.x, @point2.y)
    canvas.context.lineTo(@point3.x, @point3.y)
    canvas.context.closePath()
    canvas.context.fill()

class window.Quad
  constructor: (@point1, @width, @height, @color) ->

  draw: (canvas) ->
    canvas.quad(@point1.x, @point1.y, @width, @height, @color)

