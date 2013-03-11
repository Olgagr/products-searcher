Shop.destroy_all

shops = [
  { name: 'MarsPol', street: 'Smocza 26', postal_code: '01-041', city: 'Warszawa' }
]

shops.each do |s|
  s.create!
end

puts 'Shops created!'
