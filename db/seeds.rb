require 'faker'
require 'open-uri'

Article.destroy_all
Review.destroy_all
Consultation.destroy_all
User.destroy_all

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
    description: nil
  )
end

puts 'Finished Users!'

puts 'Creating 1 fake mentor...'
file = URI.open('https://images.unsplash.com/photo-1542156822-6924d1a71ace?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  mentor = User.new(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::TvShows::ParksAndRec.character,
    first_name: 'Mark',
    last_name: 'Fisher',
    price: rand(20..30),
    address: "Prinzessinnenstraße 21 10969 Berlin",
    mentor: true,
    description: 'Originally from Austrailia, but fell in Love with a Berliner. Moved here and did not know what to do with myself- so I joined a coding bootcamp and learned to code! Now I am a freelancer in Berlin.'
  )
mentor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
mentor.save

puts 'Creating 1 fake mentor...'
file = URI.open('https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  mentor = User.new(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: 'Mason',
    last_name: 'Miller',
    price: rand(20..30),
    address: "Lietzenseeufer 5, 14057 Berlin",
    mentor: true,
    description: 'Product designer at a fortune 500 company. Moved to Berlin from the USA. I just like meeting new people and had so many people reaching out to me asking me how I moved to the EU. Figured I would help and earn a bit of extra cash!'
  )
mentor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
mentor.save

puts 'Creating 1 fake mentor...'
file = URI.open('https://images.unsplash.com/photo-1520813792240-56fc4a3765a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  mentor = User.new(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: 'Ally',
    last_name: 'Smith',
    price: rand(20..30),
    address: "Bürknertraße 6, 12047 Berlin",
    mentor: true,
    description: "I moved from the UK and started my own company here in Berlin! I had to learn by lots of googling and talking to friends- I was lucky to have a lot of contacts in Berlin. Now I want to help others on their journey to beoming a founder."
  )
mentor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
mentor.save

puts 'Creating 1 fake mentor...'
file = URI.open('https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  mentor = User.new(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: 'Max',
    last_name: 'Müller',
    price: rand(20..30),
    address: "Schivelbeinerstraße 34, 10439 Berlin",
    mentor: true,
    description: 'From Germany, but lived in Ireland for 5 years working at a big social media company. It was so hard to organize my move to Ireland, but the experiance was so worth it. Now I want to help internationals experiance Germany!'
  )
mentor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
mentor.save

puts 'Creating 1 fake mentor...'
file = URI.open('https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60')
  mentor = User.new(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: 'Lily',
    last_name: 'Alster',
    price: rand(20..30),
    address: "Rudi-Dutschke-Straße 26, 10969 Berlin",
    mentor: true,
    description: 'Grew up in Berlin, but I have met so many expats and I have gone to help them get the Anmenldung so many times- I thought maybe I could use my new found skills for good.'
  )
mentor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
mentor.save

puts 'Creating 1 fake mentor...'
file = URI.open('https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60')
  mentor = User.new(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: 'Anna',
    last_name: 'Friedman',
    price: rand(20..30),
    address: "Sonnenallee 76, 12045 Berlin",
    mentor: true,
    description: 'I am a student at Humboldt University but grew up in Canada. All my friends back home wanted to go abroad, but it takes a lot of work to figure out a completely new system. I am learning so much however, that I want to help make the process to go abroad easier so that others can see what a great experience it is!'
  )
mentor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
mentor.save

puts 'Creating 1 fake mentor...'
file = URI.open('https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  mentor = User.new(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: 'Alex',
    last_name: 'Smith',
    price: rand(20..30),
    address: "Mommsenstraße 52, 10629 Berlin",
    mentor: true,
    description: "Grew up traveling around the world with my family and never really understood 'borders'. I want to help others cross the borders that humans have arbitrarly placed around the world. The visa system is difficult, but if you are passionate about research you can easily navigate it!"
  )
mentor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
mentor.save

puts 'Creating 1 fake mentor...'
file = URI.open('https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: 'Oscar',
    last_name: 'López',
    price: rand(20..30),
    address: "Albestraße 29, 12159 Berlin",
    mentor: true,
    description: 'I am a freelance designer here in Berlin. I like meeting other internationals here in Berlin and I hope I can help anyone who needs it move to the wonderful city that is Berlin.'
  )
mentor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
mentor.save

puts 'Creating 1 fake mentor...'
file = URI.open('https://images.unsplash.com/photo-1477118476589-bff2c5c4cfbb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60')
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: 'Sarah',
    last_name: 'Meyer',
    price: rand(20..30),
    address: "Tempelhofer Weg 54, 10829 Berlin",
    mentor: true,
    description: 'I originally worked in the Berlin immigration office, but I saw how difficult the process was for internationals to navigate and I wanted to do more to help. Welcome gives me the oppurtunity I wanted- to make the world a smaller easily navigatable place.'
  )
mentor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
mentor.save

puts 'Finished 9 Mentors!'

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1577722422778-cdfac7de2493?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create!(
    user: User.all.sample,
    title: "Doing Your Taxes in Germany",
    summary: "Doing your taxes is never fun, but it is especially not fun if you do not speak the language. There are several ways you can make your life easier when it comes to taxes.",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1530397828239-f3bf2ee629df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create!(
    user: User.all.sample,
    title: "Finding the Ideal Flat",
    summary: "The dreaded flat search, it is something many people pay agencies so that they can avoid. However doing it on your own is surpisingly a lot easier than you might think!",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1526043446186-2ff4028f978b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create(
    user: User.all.sample,
    title: "How To Get an Ameldung, Berlin",
    summary: "I made an appointment before I even arrived to berlin, and I will tell you how you can too! Avoid the long lines and stress of trying to book an appointment with these easiy steps.",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create(
    user: User.all.sample,
    title: "Becoming a Freelancer",
    summary: "So many expats are moving to the city and they want a flexible lifestyle. Travel Europe while still getting paid.",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1548061202-83d4ccfa0155?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create(
    user: User.all.sample,
    title: "Founding Your Own Business",
    summary: "I founded my own catering company five years ago. It was not easy, but with some time and patients anyone can become a start-up founder",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1526907858462-4b1c6b0a0dcc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
article = Article.create(
    user: User.all.sample,
    title: "Work Life Balance, and What to Expect",
    summary: "Tired of a 40 hour work week? Well welcome to Germany- where the average work week is 35 and the breaks are mandatory.",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1588605360336-77ac8ee6fc53?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create(
    user: User.all.sample,
    title: "Top 10 German Schools, Berlin",
    summary: "Break through all the google reviews and get to the credentials that really matter and discover all the great schools Berlin has to offer.",
    content: Faker::Lorem.paragraph(sentence_count: 300)
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Finished Articles!'

puts 'creating 5 consultations'
5.times do
consultation = Consultation.create(
  asker: User.where(mentor: false).sample,
  mentor: User.where(mentor: true).sample,
  date: nil,
  confirmation: 'pending'
  )
end

puts 'created a consultation'

puts 'Creating 5 reviews...'
  review = Review.create(
    consultation: Consultation.all[0],
    rating: 4,
    content: "<%= @user.first_name %> was professional, reliable, and knowledgeable on the subject. I had so much anxiety about starting the process until I met the amazing mentor who helped me get my paperwork in order and schedule the appropriate appointments. I couldn't have done it without <%= @user.first_name %>!"
  )

  review = Review.create(
    consultation: Consultation.all[1],
    rating: 5,
    content: "10/10 can't recommend WELCOME enough! Their friendly mentors helped me so much when I was a stranger to the city!"
  )

  review = Review.create(
    consultation: Consultation.all[2],
    rating: 5,
    content: "Thank you for helping me get my taxes together under a crazy deadline in a language I don't speak yet! Couldn't have done it without my wonderful mentor, <%= @user.first_name %>."
  )

  review = Review.create(
    consultation: Consultation.all[3],
    rating: 3,
    content: "The service was useful, but my mentor didn't know enough about my country of origin's exit requirements so their suggestions weren't super helpful. I think next time I'll just have to rely on Google or a friend."
  )

  review = Review.create(
    consultation: Consultation.all[4],
    rating: 4,
    content: "Trust the pros at Welcome! I couldn't have done it without you, THANK YOU!!!"
  )

  puts 'Finished creating 5 Reviews!'

  puts ' creating 5 comments'

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[0],
    content: 'Really interesting read! It has been very helpful thank you!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[0],
    content: 'Not sure I agree with your solutions, but the article was well written.'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[0],
    content: 'Really interesting read! It has been very helpful thank you!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[1],
    content: 'Great Read! I have now made an appointment with you as a mentor!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[1],
    content: 'A good summary of the challenge!!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[1],
    content: 'Really interesting read! It has been very helpful thank you!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[2],
    content: 'Great Read! I have now made an appointment with you as a mentor!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[3],
    content: 'Not sure I agree with your solutions, but the article was well written.'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[3],
    content: 'Great Read! I have now made an appointment with you as a mentor!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[4],
    content: 'Really interesting read! It has been very helpful thank you!'
    )
