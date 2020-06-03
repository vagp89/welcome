# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 10 fake users...'
10.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::GreekPhilosophers.name,
    price: nil,
    location: nil,
    mentor: false
  )
  user.save!
end
puts 'Finished Users!'

puts 'Creating 5 fake mentors...'
5.times do
  mentor = User.new(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::GreekPhilosophers.name,
    price: rand(20..30),
    location: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    mentor: true
  )
  mentor.save!
end
puts 'Finished Mentors!'
