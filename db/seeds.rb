require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'starting seed'

10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    rating: rand(1..5),
    address: Faker::Address.street_address
  )

  restaurant.save!
end

puts "finished!"
