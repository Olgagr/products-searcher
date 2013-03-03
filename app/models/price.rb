class Price < ActiveRecord::Base

  attr_accessible :price, :product_id, :shop_id

  belongs_to :shop
  belongs_to :product

end
