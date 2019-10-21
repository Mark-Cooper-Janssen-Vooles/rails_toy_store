# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do 
  User.create(
    email: Faker::Internet.email,
    password: Faker::Creature::Dog.name
  )

  Manufacturer.create(
    name: "Manufacturer + " + Faker::Name.unique.name,
    location: "Melbourne"
  )
end

10.times do 
  Toy.create(
    name: Faker::TvShows::BreakingBad.character, description: Faker::ChuckNorris.fact, 
    date: Faker::Date.between(from: 1000.days.ago, to: Date.today), 
    user_id: rand(1..10),
    manufacturer_id: rand(1..10)
  )
end