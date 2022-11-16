# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Review.destroy_all
Restaurant.destroy_all

10.times do
  resto = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.street_name, category: ["chinese", "italian", "japanese", "french", "belgian"].sample, phone_number: Faker::PhoneNumber.cell_phone)
  5.times do
    Review.create!(restaurant_id: resto.id, content: [Faker::Quotes::Shakespeare.as_you_like_it_quote, Faker::Restaurant.review].sample, rating: [1, 2, 3, 4, 5].sample)
  end
end
