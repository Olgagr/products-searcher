define ['jquery', 'underscore', 'backbone', 'bootstrap/bootstrap-typeahead', 'views/products/product_price'], ($, _, Backbone, typeahead, ProductPrice) ->

  Backbone.View.extend

    el: '#shop-products'

    initialize: ->
      self = @
      @collection.on 'add', @addItem, @

      @.$('#product_name').typeahead(
        ajax:
          url: '/products/autocomplete'
          method: 'get'
          triggerLength: 1
        itemSelected: (item, val, text) ->
          self.collection.add({ name: text, id: val })
          self.$('#product_name').val('')
      )

    addItem: (model) =>
      view = new ProductPrice(
        model: model
      )
      @.$('#shop-products-list').prepend(view.render().el)

