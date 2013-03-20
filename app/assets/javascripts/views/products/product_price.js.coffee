define ['jquery', 'underscore', 'backbone', 'products/product_price_tmpl'] , ($, _, Backbone) ->

  Backbone.View.extend

    template: JST['products/product_price_tmpl']

    tagName: 'li'

    render: ->
      @$el.html(@template(@model.attributes))
      @

