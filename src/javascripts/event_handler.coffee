class window.EventHandler
  handlers: []

  tap: (point) ->
    _.each @handlers, (handler) ->
      handler.tap(point) if handler.tap?

  registerState: (state) ->
    @handlers.push state

  removeState: (event, state) ->
    @handlers = _.without(@handlers, state)

