class Product < ActiveRecord::Base

  attr_accessible :description, :name

  has_many :prices
  has_many :shops, through: :prices

  validates :name, presence: true

  scope :autocomplete, lambda { |q| where('name like ?', "%#{q}%").order(:name) }

end
