# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :price do
    shop_id 1
    product_id 1
    price 1.5
  end
end
