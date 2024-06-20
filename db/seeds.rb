require 'faker'

Review.destroy_all
Restaurant.destroy_all

5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORY.sample
  )
end

10.times do
  Review.create(
    rating: rand(0..5),
    content: Faker::Restaurant.review,
    restaurant: Restaurant.all.sample
  )
end
