define ['jquery', 'underscore', 'backbone', 'views/shops/add_products'], ($, _, Backbone, AddProducts) ->

  Router = Backbone.Router.extend(

    routes:
      'shops/:shop_id/add_products': 'addProductsToShop'

    addProductsToShop: ->
      new AddProducts()

  )

