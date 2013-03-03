class Shop < ActiveRecord::Base
  attr_accessible :city, :name, :postal_code, :street, :latitude, :longitude

  validates :name, :street, :city, presence: true

  geocoded_by :full_street_address

  after_validation :geocode

  def full_street_address
    "#{street}, #{postal_code} #{city}"
  end

end
