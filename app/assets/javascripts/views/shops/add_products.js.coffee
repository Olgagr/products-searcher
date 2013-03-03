class ProductsSearcher.Views.AddProducts extends Backbone.View

  el: '#shop-products'

  initialize: ->
    @.$('#product_name').typeahead(
      ajax:
        url: '/products/autocomplete'
        method: 'get'
        triggerLength: 1
      itemSelected: (item, val, text) ->

    )