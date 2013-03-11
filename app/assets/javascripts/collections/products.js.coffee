define ['jquery', 'backbone', 'models/product'], ($, _, Product) ->

  Backbone.Collection.extend(
    model: Product
  )

