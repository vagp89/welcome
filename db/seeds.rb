# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

require 'faker'

Article.destroy_all

puts 'Creating 5 fake users...'
5.times do
  user = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::GreekPhilosophers.name,
    price: nil,
    address: nil,
    mentor: false
  )
end
puts 'Finished Users!'

puts 'Creating 1 fake mentor...'
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

puts 'Creating 1 fake mentor...'
1.times do
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::GreekPhilosophers.name,
    price: rand(20..30),
    address: "Lietzenseeufer 5, 14057 Berlin",
    mentor: true
  )
end
puts 'Finished Mentors!'

puts 'Creating 1 fake mentor...'
1.times do
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::GreekPhilosophers.name,
    price: rand(20..30),
    address: "Bürknertraße 6, 12047 Berlin",
    mentor: true
  )
end

puts 'Creating 1 fake mentor...'
1.times do
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::GreekPhilosophers.name,
    price: rand(20..30),
    address: "Schivelbeinerstraße 34, 10439 Berlin",
    mentor: true
  )
end

puts 'Creating 1 fake mentor...'
1.times do
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::GreekPhilosophers.name,
    price: rand(20..30),
    address: "Rudi-Dutschke-Straße 26, 10969 Berlin",
    mentor: true
  )
end

puts 'Creating 1 fake mentor...'
1.times do
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::GreekPhilosophers.name,
    price: rand(20..30),
    address: "Sonnenallee 76, 12045 Berlin",
    mentor: true
  )
end

puts 'Creating 5 fake articles...'
5.times do
  article = Article.create(
    user_id: rand(1..5),
    title: Faker::Quotes::Shakespeare.hamlet_quote,
    content: Faker::Lorem.paragraph(sentence_count: 20)
  )
end
puts 'Finished Articles!'
