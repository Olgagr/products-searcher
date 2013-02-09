class Shop < ActiveRecord::Base
  attr_accessible :city, :name, :postal_code, :street

  validates :name, :street, :city, presence: true

end
