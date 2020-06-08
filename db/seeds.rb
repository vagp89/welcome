# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

require 'faker'

Article.destroy_all
Review.destroy_all

puts 'Creating 5 fake users...'
5.times do
  user = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    price: nil,
    address: nil,
    mentor: false,
    description: "Just a regular old user"
  )
end
puts 'Finished Users!'

puts 'Creating 1 fake mentor...'
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::TvShows::ParksAndRec.character,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    price: rand(20..30),
    address: "Prinzessinnenstraße 21 10969 Berlin",
    mentor: true,
    description: Faker::Marketing.buzzwords
  )

puts 'Finished Mentors!'



puts 'Creating 1 fake mentor...'
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    price: rand(20..30),
    address: "Lietzenseeufer 5, 14057 Berlin",
    mentor: true,
    description: Faker::Marketing.buzzwords
  )

puts 'Creating 1 fake mentor...'
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    price: rand(20..30),
    address: "Bürknertraße 6, 12047 Berlin",
    mentor: true,
    description: Faker::Marketing.buzzwords
  )

puts 'Creating 1 fake mentor...'
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    price: rand(20..30),
    address: "Schivelbeinerstraße 34, 10439 Berlin",
    mentor: true,
    description: Faker::Marketing.buzzwords
  )

puts 'Creating 1 fake mentor...'
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    price: rand(20..30),
    address: "Rudi-Dutschke-Straße 26, 10969 Berlin",
    mentor: true,
    description: Faker::Marketing.buzzwords
  )

puts 'Creating 1 fake mentor...'
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    price: rand(20..30),
    address: "Sonnenallee 76, 12045 Berlin",
    mentor: true,
    description: Faker::Marketing.buzzwords
  )

puts 'Finished Mentors!'

puts 'Creating 1 fake article...'
1.times do
  article = Article.create(
    user_id: rand(1..5),
    title: "Doing Your Taxes in Germany",
    summary: "Doing your taxes is never fun, but it is especially not fun if you do not speak the language. There are several ways you can make your life easier when it comes to taxes.",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
end

puts 'Creating 1 fake article...'
1.times do
  article = Article.create(
    user_id: rand(1..5),
    title: "Finding the Ideal Flat",
    summary: "The dreaded flat search, it is something many people pay agencies so that they can avoid. However doing it on your own is surpisingly a lot easier than you might think!",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
end

puts 'Creating 1 fake article...'
1.times do
  article = Article.create(
    user_id: rand(1..5),
    title: "How To Get an Ameldung, Berlin",
    summary: "I made an appointment before I even arrived to berlin, and I will tell you how you can too! Avoid the long lines and stress of trying to book an appointment with these easiy steps.",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
end

puts 'Creating 1 fake article...'
1.times do
  article = Article.create(
    user_id: rand(1..5),
    title: "Becoming a Freelancer",
    summary: "So many expats are moving to the city and they want a flexible lifestyle. Travel Europe while still getting paid.",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
end

puts 'Creating 1 fake article...'
1.times do
  article = Article.create(
    user_id: rand(1..5),
    title: "Founding Your Own Business",
    summary: "I founded my own catering company five years ago. It was not easy, but with some time and patients anyone can become a start-up founder",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
end

puts 'Creating 1 fake article...'
1.times do
  article = Article.create(

    user_id: rand(1..5),
    title: "Work Life Balance, and What to Expect",
    summary: "Tired of a 40 hour work week? Well welcome to Germany- where the average work week is 35 and the breaks are mandatory.",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
end

puts 'Creating 1 fake article...'
1.times do
  article = Article.create(
    user_id: rand(1..5),
    title: "Top 10 German Schools, Berlin",
    summary: "Break through all the google reviews and get to the credentials that really matter and discover all the great schools Berlin has to offer.",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
end

puts 'Finished Articles!'

puts 'Creating 5 reviews...'
  review = Review.create(
    consultation_id: rand(1..20),
    rating: 4,
    content: "<%= @user.first_name %> was professional, reliable, and knowledgeable on the subject. I had so much anxiety about starting the process until I met the amazing mentor who helped me get my paperwork in order and schedule the appropriate appointments. I couldn't have done it without <%= @user.first_name %>!"
  )

  review = Review.create(
    consultation_id: rand(1..20),
    rating: 5,
    content: "10/10 can't recommend WELCOME enough! Their friendly mentors helped me so much when I was a stranger to the city!"
  )

  review = Review.create(
    consultation_id: rand(1..20),
    rating: 5,
    content: "Thank you for helping me get my taxes together under a crazy deadline in a language I don't speak yet! Couldn't have done it without my wonderful mentor, <%= @user.first_name %>."
  )

  review = Review.create(
    consultation_id: rand(1..20),
    rating: 3,
    content: "The service was useful, but my mentor didn't know enough about my country of origin's exit requirements so their suggestions weren't super helpful. I think next time I'll just have to rely on Google or a friend."
  )

  review = Review.create(
    consultation_id: rand(1..20),
    rating: 4,
    content: "Trust the pros at Welcome! I couldn't have done it without you, THANK YOU!!!"
  )
