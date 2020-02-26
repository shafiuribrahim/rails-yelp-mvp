require 'faker'

10.times do
  rand_category = ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: rand_category
  )
  restaurant.save!
end
