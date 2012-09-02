class ImageFile
  constructor: (@file) ->
    @x = 0
    @y = 0
    @alpha = 1
    @rotation = 0
    @zoomx = 1
    @zoomy = 1
    @image = new image @file

  getPosition: ->
    new Point(@x, @y)

  setPosition: (point) ->
    @x = point.x
    @y = point.y

  draw: (canvas) ->
    @image.draw(canvas, @x, @y, @alpha, @rotation, @zoomx, @zoomy)
