define ['jquery', 'underscore', 'backbone', 'routers/router'], ($, _, Backbone, Router) ->

  window.ProductsSearcher =
    Models: {}
    Collections: {}
    Views: {}
    Routers: {}
    initialize: ->
      new Router()
      Backbone.history.start(pushState: true)

