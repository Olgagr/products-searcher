window.ProductsSearcher =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new ProductsSearcher.Routers.Router()
    Backbone.history.start(pushState: true)


$(document).ready ->
  ProductsSearcher.initialize()
