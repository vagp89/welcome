# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

# puts 'Creating 10 fake users...'
# 5.times do
#   user = User.create(
#     email: Faker::Internet.email,
#     password: "123456",
#     username: Faker::Superhero.name,
#     first_name: Faker::Name.first_name,
#     last_name: Faker::GreekPhilosophers.name,
#     price: nil,
#     address: nil,
#     mentor: false
#   )
# end
# puts 'Finished Users!'

puts 'Creating 5 fake mentors...'
1.times do
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::GreekPhilosophers.name,
    price: rand(20..30),
    address: "Prinzessinnenstraße 21 10969 Berlin",
    mentor: true
  )
end
puts 'Finished Mentors!'

puts 'Creating 5 fake mentors...'
1.times do
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::GreekPhilosophers.name,
    price: rand(20..30),
    address: "Lietzenseeufer 5 14057 Berlin",
    mentor: true
  )
end
puts 'Finished Mentors!'
