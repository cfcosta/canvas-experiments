class ImageFile
  constructor: (@file) ->
    @x = 0
    @y = 0
    @alpha = 1
    @rotation = 0
    @zoomx = 1
    @zoomy = 1
    @image = new image @file
    @setMidHandle()

  getPosition: ->
    new Point(@x, @y)

  setPosition: (point) ->
    @x = point.x
    @y = point.y

  setMidHandle: ->
    @image.setmidhandle()

  setHandle: (point) ->
    @image.sethandle(point.x, point.y)
    @handle = point

  draw: (canvas) ->
    @image.draw(canvas, @x, @y, @alpha, @rotation, @zoomx, @zoomy)
