class window.Player
  constructor: ->
    @player = new music("FLOD")
    @player.stereo(true)

  play: (file) ->
    @player.LoadAndRun(file)
