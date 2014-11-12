# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  resto = Restaurant.create(name: Faker::Company.name ,address: Faker::Address.street_address ,phone: Faker::PhoneNumber.phone_number, category: %w(chinese italian japanese french belgian).sample )

  (0..5).to_a.sample.times do
    resto.reviews.create(content: Faker::Lorem.paragraph, rating: (0..5).to_a.sample)
  end
end