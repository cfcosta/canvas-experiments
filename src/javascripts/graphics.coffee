class window.Canvas
  constructor: (@width, @height, container) ->
    @canvas = document.createElement "canvas"
    document.getElementById(container).appendChild @canvas

    @canvas.setAttribute('width', @width)
    @canvas.setAttribute('height', @height)
    @context = @canvas.getContext '2d'

  fill: (color) ->
    oldFillStyle = @context.fillStyle
    oldGlobalAlpha = @context.globalAlpha

    @context.globalAlpha = 1
    @context.fillStyle = color
    @context.fillRect(0, 0, @width, @height)

    @context.fillStyle = oldFillStyle
    @context.globalAlpha = oldGlobalAlpha

  step: (fun) ->
    window.webkitRequestAnimationFrame fun

  line: (x1, y1, x2, y2, width, color) ->
    oldStrokeStyle = @context.strokeStyle
    @context.strokeStyle = color
    @context.lineWidth = width
    @context.beginPath()
    @context.moveTo x1, y1
    @context.lineTo x2, y2
    @context.stroke()
    @context.closePath()
    @context.strokeStyle = oldStrokeStyle

