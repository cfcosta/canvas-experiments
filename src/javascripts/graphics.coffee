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

