define ['jquery', 'underscore', 'backbone', 'bootstrap/bootstrap-typeahead'], ($, _, Backbone, typeahead) ->

  Backbone.View.extend

    el: '#shop-products'

    initialize: ->
      @.$('#product_name').typeahead(
        ajax:
          url: '/products/autocomplete'
          method: 'get'
          triggerLength: 1
        itemSelected: (item, val, text) ->
      )