class ProductsSearcher.Routers.Router extends Backbone.Router

  routes:
    'shops/:shop_id/add_products': 'addProductsToShop'

  addProductsToShop: ->
    new ProductsSearcher.Views.AddProducts()