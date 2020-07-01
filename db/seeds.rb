require 'faker'
require 'open-uri'

Article.destroy_all
Review.destroy_all
Consultation.destroy_all
Message.destroy_all
Chatroom.destroy_all
User.destroy_all

puts 'Creating 30 fake users...'
30.times do
  user = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    price: nil,
    address: nil,
    mentor: false,
    profession: nil,
    nationality: nil,
    expertise: nil,
    location: nil,
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
    location: 'Berlin',
    profession: 'Freelance Web Developer',
    nationality: 'Australian',
    expertise: 'Freelance Visa, Getting an Anmeldung, Finding a flat',
    description: 'Originally from Australia, but fell in love with a Berliner. Moved here and did not know what to do with myself, so I joined a coding bootcamp and learned to code! Now I am a freelancer in Berlin.'
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
    address: "Yorckstraße 60, 10965 Berlin",
    mentor: true,
    location: 'Berlin',
    profession: 'Product Designer',
    nationality: 'American',
    expertise: 'Business Visa, Finding a Job',
    description: 'Product designer at a Fortune 500 company. Moved to Berlin from the USA. I just like meeting new people and had so many people reaching out to me asking me how I moved to the EU. Figured I would help and earn a bit of extra cash!'
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
    address: "Tucholskystraße 30, 10117 Berlin",
    mentor: true,
    location: 'Berlin',
    profession: 'Founder',
    nationality: 'British',
    expertise: 'Start-up Visa, Rental market, Bank loans',
    description: "I moved from the UK and started my own company here in Berlin! I had to learn by lots of googling and talking to friends: I was lucky to have a lot of contacts in Berlin. Now I want to help others on their journey to becoming a founder."
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
    location: 'Berlin',
    profession: 'Software Engineer',
    nationality: 'German',
    expertise: 'Work visa, Taxes, EU movement',
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
    address: "Kollwitzstraße 83, 10435 Berlin",
    mentor: true,
    location: 'Berlin',
    profession: 'German Teacher',
    nationality: 'German',
    expertise: 'Anmeldung, German translations',
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
    location: 'Berlin',
    profession: 'Student',
    nationality: 'Canadian',
    expertise: 'Student visas, University application process, finding a student flat',
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
    location: 'Berlin',
    profession: 'Bartender',
    nationality: 'German',
    expertise: 'Finding a flat, finding a job, health insurance',
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
    location: 'Berlin',
    profession: 'Freelance Designer',
    nationality: 'Spanish',
    expertise: 'Freelance visa, Taxes, EU movement',
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
    location: 'Berlin',
    profession: 'Civil Servant',
    nationality: 'German',
    expertise: 'Work visa, Anmeldung, general paperwork',
    description: 'I originally worked in the Berlin immigration office, but I saw how difficult the process was for internationals to navigate and I wanted to do more to help. Welcome gives me the oppurtunity I wanted- to make the world a smaller easily navigatable place.'
  )
mentor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
mentor.save

puts 'Creating 1 fake mentor...'
file = URI.open('https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  mentor = User.create(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Superhero.name,
    first_name: 'Daniel',
    last_name: 'Fischer',
    price: rand(20..30),
    address: "Rudi-Dutschke-Straße 26, 10969 Berlin",
    mentor: true,
    location: 'Berlin',
    profession: 'Student',
    nationality: 'German',
    expertise: 'Student visa, German translation',
    description: "I am currently studying for my Masters at Frei University, but did my undergrad in the Netherlands. Even though it was only a move within the EU the languages and cultures are still different and the paper work to go to university was still very intimidating. That's why I want to help others as they navigate a new system so they can not be so stressed!"
  )
mentor.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
mentor.save

puts 'Finished 10 Mentors!'

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1577722422778-cdfac7de2493?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create(
    user: User.where(mentor: true).sample,
    title: "Doing Your Taxes in Germany",
    summary: "Doing your taxes is never fun, but it is especially not fun if you do not speak the language. There are several ways you can make your life easier when it comes to taxes.",
    content: "It’s only a month till 31st May which means that millions of self-prepared income tax return declarations are going to be shipped to the tax offices soon all around Germany.
<br>
<br>
As it seems I’m always looking for a trouble (aka more fascinating ways of doing something simple), and a few of my colleagues constantly encourage me to share experience on such workflows which might save you some time and money in Germany. And I’m not even talking about fun of dealing with it! As usual — I’m not a lawyer and not a tax consultant, if you have any questions or need more information I advise you to talk to them.
While there are a lot of specifics of filling out the declaration for each specific case, that would be very bad decision to overview all of the fields in this blog post (or even 20 blog posts), so I’d like to focus on tools you can use and some hints you can take advantage of. As usual — everything is based on my experience of submitting income tax return for 2014 and 2015 years (and got a 2014 one successfully processed in the tax services with return rate of ~99.5% of what I have asked for).
<br>
<br>
Do you need to submit it?
<br>
You’re obliged by law to submit the income tax return declaration in case of additional income (e.g. additional workplace, multiple sales of things on marketplaces, sales of securities, etc) or if you have a tax class which is not 1 or 4. Please consult your tax services web site for more information (e.g. Bayern Finanzamt).
Others are not required to submit it, but may do so to return some part of the taxes paid during the year. And I definitely encourage you to do so, as it’s a nice yearly bonus for spending a few hours putting numbers in the form!
There is also a very nice thing called Pauschalbetrag (a minimum amount of taxes to be returned, without providing detailed individual amounts or proof). This amount is used for administrative simplification, and it makes filling out simple declarations very fast because you don’t need to provide much data. For employees (or working professionals) the Pauschalbetrag would be calculated adding 1,000 EUR to yearly salary and getting increase in taxes paid from it (in comparison with normal yearly salary). There are some other conditions described e.g. here.
<br>
<br>
How much taxes can I get back?
<br>
It really depends on the situation. For example, if you’ve moved from another city/country during the year or have kids — quite a lot, that’s really hard to make any estimates.
From what I’ve seen on the internet the average is about 1,000 EUR, but can be more or less.
<br>
<br>
What are the deadlines?
<br>
If you’re submitting form on your own, you should do so before 31st May of the following year (so by 31.05.2016 for 2015 year).
If you’re using a tax advisor (Steurberater) they have a special conditions and can submit it before 31st December of the following year (so by 31.12.2016 for 2015 year).
If you’re obliged to submit the declaration, these strict deadlines MUST be met, but you can try to get an extension if you explain the reason to the tax services (e.g. if you’ve submitted documents right before the deadline and they require additional clarification or documents, they’ll give you a few more weeks to do so).
But if you are submitting a Steuererklärung voluntarily, you can do so for the last four years (proof in the Abgabenordnung (AO) § 169 Festsetzungsfrist) which means that now (April 2016) you can still submit it for 2015, 2014, 2013, 2012 years. This is extremely helpful if you’re moving to Germany — I hardly could have submitted any declaration after the first year of living here, that looked too complicated.
<br>
<br>
At some point I’ve heard that if you start submitting the declaration voluntarily one year you have to meet the strict deadline for the next year, but I couldn’t find any proof in the law easily, so I consider it to be false assumption or there is some tricky clause around that— consult a tax advisor if it’s important for you.
Good explanation of deadlines is provided on this web site (German).
<br>
There is one major choice you have to make, as you can prepare and submit the declaration:
<br>
Using tax advisor services (Steurberater)
Personally I would recommend using Steurberater (tax advisor) only if you have some complicated cases (e.g. a lot of sources of additional income, necessity to pay taxes in US or other countries, entrepreneurship activities, etc) or if you don’t understand any German.
<br>
Tax advisor can cost you a lot (which would depend on your tax return, but can easily go up to 500–700 EUR or even higher) and in many cases it won’t be easier for you as you still need to prepare all the information, documents and invoices for them.
<br>
On your own using special software or forms
<br>
There are free tax return forms in PDF, electronic forms and a lot of software products / web services for your convenience, software/web services mostly costs from 5 EUR to 25 EUR per submission of a simple declaration (e.g. if you’re an employee) which is significantly cheaper than using a tax advisor if you can handle submitting information in German as I couldn’t find any good software in English.")
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1530397828239-f3bf2ee629df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create(
    user: User.where(mentor: true).sample,
    title: "Finding the Ideal Flat",
    summary: "The dreaded flat search, it is something many people pay agencies so that they can avoid. However doing it on your own is surpisingly a lot easier than you might think!",
    content: "Finding a place to live is the first step of moving to Berlin. It's also the hardest step. Finding a good apartment can take months. Here are tricks to find an apartment as fast as possible.
<br>
<br>
Once you have found an apartment, you must move out of your old apartment, and move into your new apartment.
Berlin's housing market is very competitive. If you want to improve your chances, you must come prepared. Here is what you need to have.
<br>
<br>
Bring the right documents
<br>
You need the following documents to apply for an apartment. Make multiple copies, and bring them with you to every apartment visit.
Schufa. This is the German equivalent to a credit report. Here is how you can get a free Schufa. If you are new in Germany, you might have an empty Schufa. This is normal, and landlords know it can happen. You can also bring a work contract to prove that you can pay the rent on time.
Copy of passport or ID. You must show it when you apply for the apartment.
Proof of income. This can be a work contract or your last 3 paycheques. If you are a freelancer, you can bring your profit and loss statement. If you don't make enough money, you can get a Mietbürgschaft.
Bank account statement (optional). This shows how much money you have in your bank account. If you are a freelancer, you should bring one1, 2.
Mietschuldenfreiheitsbescheinigung (optional). This is a document from your previous landlord that confirms you don't owe him/her any money. It has no specific format, but you can use this template.
Mietbürgschaft (optional). If you don't have a steady income, you can ask a parent or a friend to be your guarantor. If you don't pay the rent on time, your guarantor will have to pay it. This is a good option for students, freelancers and people with a low income. This is called a Mietbürgschaft. Use this template.
<br>
<br>
Make some time
<br>
It can take a long time to find an apartment in Berlin. If you have a low budget, it can take months. You need time to look for apartments, and to visit them. Apartment visits usually take around 15 minutes.
<br>
<br>
Save some money
<br>
You will need money for the first month's rent, and for the security deposit (Kaution). The Kaution is usually 3 times the cold rent. If you don't have enough money to cover the deposit, open a Mietkautionskonto or get a Mietaval from your bank. Your bank will act as your guarantor and cover your deposit.
Open a bank account. In Germany, you pay rent by bank transfer, not with cheques or cash. If you have a bank account in another EU country, it's enough. You often need an Anmeldebestätigung to open a bank account, but you can't get one without an address in Germany. Some banks let you open an account without this document. Use TransferWise to transfer money from another country to your German bank account. See our guide on choosing a bank in Germany.
<br>
<br>
Where to look for apartments?
<br>
Your Hausverwaltung
<br>
If you already have an apartment in Berlin, ask your Hausverwaltung if they have other apartments available1. They often prefer to rent to someone they already trust. They might even have apartments that are not yet listed.
<br>
General apartment search
<br>
Classified ads
<br>
eBay Kleinanzeigen - The most popular classified ads site in Germany
<br>
ImmobilienScout24 - The biggest apartment listing site in Germany.
<br>
Craigslist - Not very popular in Germany. Most ads are scams.
<br>
kalaydo.de
<br>
Wohnungbörse
<br>
Housing companies
<br>
<br>
1892
<br>
Charlottenburger Baugenossenschaft
<br>
Deutsche Wohnen
<br>
DPF
<br>
Fortuna
<br>
GESOBAU
<br>
Gewobag
<br>
HOWOGE
<br>
immobilio.de
<br>
Salz und Brot
<br>
Stadt und Land
<br>
WBM
<br>
WG Merkur
<br>
WG Weissensee
<br>
Wohnungsbaugenossenschaften
<br>
<br>
Facebook groups
<br>
WG-Zimmer & Wohnungen Berlin - 150 000+ members
<br>
Flats in Berlin - 82 000+ members
<br>
WG, Zimmer und Wohnung in Berlin - 82 000+ members
<br>
Berlin Apartments - 84 000+ members
<br>
Apartments/roommates in Berlin - 17 000+ members
<br>
WG Zimmer Wohnung in Berlin - 25 000+ members
<br>
Flats in Berlin ONLY LONG TERM - 36 000+ members
<br>
Berlin LONG TERM rooms/flats - 7 000+ members
<br>
Berlin apartments and rooms for rent - 2 000+ members
<br>
<br>
Short term and furnished apartments
<br>
exBerliner - English-speaking accommodation service, offers furnished and unfurnished flats
<br>
Berlinovo - Furnished apartments
<br>
Nestpick - Furnished apartments
<br>
Crocodilian - Furnished apartments
<br>
coming home - Furnished apartments
<br>
Wunderflats - Furnished apartments
<br>
White Apartments - Furnished apartments
<br>
Spotahome - Medium to long term furnished apartments
<br>
FarAwayHome - Furnished and serviced apartments
<br>
AirBnB, Wimdu and 9flats - Travel apartments, useful as a first accommodation. You might not be able to register your address there.
<br>
Monteurzimmer.de - Accommodations for technicians and construction workers
<br>
TheHomeLike - Furnished apartments
<br>
GoLiving - Furnished apartments. Includes everything. Very expensive.
<br>
Temporary flat rentals in Berlin - Facebook group, 15 000+ members
<br>
WGs, flat sharing and roommates
<br>
<br>
WG-Gesucht - The most famous roommate search website in Germany. Expect fierce competition.
<br>
WG Suche
<br>
WG-Spion
<br>
Zimmer in Berlin, Zwischenmiete - Facebook group, 16 000+ members
<br>
Looking for room to rent in Berlin Moabit/Charlottenburg/Mitte - Facebook group, 1 000+ members
<br>
Find room / roommate in Berlin - Facebook group, 1 000+ members
<br>
<br>
Specific needs
<br>
Queer housing Berlin - Facebook group, 1 000+ members
<br>
<br>
What should you know?
<br>
Agent fees: Since 2015, you should never have to pay an agent fee (Maklergebühr or Provision) when renting an apartment, unless you hired the agent1, 2.
<br>
Appliances: Pay attention to which appliances are included. You might need to buy a fridge, a stove or a washing machine. There might not be enough space for a normal washing machine. Check if the stove is gas or electric.
<br>
Crime: Berlin is a generally safe city, but some areas are more dangerous than others. For example, it's more dangerous to live right next to the stations highlighted on this crime map (Kottbusser Tor, Görlitzer Bahnhof, Hermannplatz, Alexanderplatz). Even then, it's not very dangerous.
<br>
Deposit: In Germany, most apartments require a deposit (Kaution). The deposit is usually 3 times the cold rent (Kaltmiete). The money is kept in a special savings account. You get your deposit back when you leave the apartment. If there are repairs to make, the landlord will use your deposit to pay for them. This guide explains how deposits work in Germany.
<br>
Flat sharing: the German term for a shared apartment is a WG, for Wohngemeinschaft.
<br>
Hausverwaltung: When you have a problem with your apartment, you will deal with the Hausverwaltung. Some are really good, and some are really bad. Before you choose an apartment, look for reviews of its Hausverwaltung.
<br>
Kaltmiete and Warmmiete: In Germany, there is the cold rent (Kaltmiete) and the warm rent (Warmmiete). The warm rent is the cold rent plus the utilities (Nebenkosten). It's what you will pay at the end of the month.
<br>
Kitchen not included: Many apartments come without a furnished kitchen. The kitchen will be completely empty: no kitchen counter, no kitchen sink. This is what it looks like. You can usually buy the kitchen from the previous tenant, or get your own from a furniture store like IKEA. You can also look for apartments with a kitchen (mit Küche, EBK or Einbauküche). People often sell their kitchen for way too much, because they know you are desperate to get the apartment.
<br>
Look outside the Ring: Don't limit your search to Kreuzberg, Prenzlauer Berg, Neukölln and Friedrichshain. There are cheaper neighbourhoods that are still interesting and well-connected. Don't be afraid to live outside the Ringbahn, it's not that far. Use Mapnificient to find areas with a reasonable commute.
<br>
Nebenkosten: The Nebenkosten is what you pay for the utilities. This usually includes central heating, hot water, trash collection and city taxes, but it doesn't include the GEZ. These costs are added to the cold rent (Kaltmiete). The cold rent plus the Nebenkosten is called the warm rent (Warmmiete). The Nebenkosten are not a fixed cost, they are estimated1. It is recalculated once per year. If you paid too much, you will get a refund. If you didn't pay enough, you will get an invoice. For instance, I had to pay 250€ more at the end of 2017.
<br>
Noise: There are two sources of noise you should worry about: flights from Tegel and ambulances. If you live around Tegel, it's hard to sleep with your windows open. If you live on a large street like Friedrichstraße, the sound of ambulances and traffic can also keep you up at night. Use this noise map of Berlin to see how loud an area is. There are some party areas in Berlin that get really loud and crowded during the summer, particularly the U1 between Kottbusser Tor and Warschauer Straße.
<br>
Permission from the landlord: You can't rent a room or an apartment without the permission of the landlord1. Some tenants illegally sublet their apartment, or rent rooms AirBnB. If they get caught, the landlord can end their lease immediately1 and kick them out 3 months later1. You are not supposed to register your address without the landlord's permission.
<br>
Public transport: Use Mapnificient to find areas with a short commute. Most places inside the Ringbahn are easy to reach with public transport. Berlin's public transport network is divided into 3 zones1: A, B and C. Zone A is the area inside the Ringbahn. Zone B is the area outside the Ringbahn. Zone C is the area outside of Berlin, in Brandenburg.
<br>
State-subsidised apartments: Some apartments are listed as WBS erforderlich. These apartments are subsidised by the state, and are only accessible to tenants with a Wohnberechtigungsschein1.
<br>
Scams: There are many fake apartment listings on the sites mentioned above. Scammers take advantage of desperate apartment hunters by requiring deposits for apartments that don't exist. This guide and this guide will help you spot apartment rental scams.
<br>
Temporary leases: Temporary leases are generally invalid. They are very common in Berlin, but it doesn't mean they are valid.
<br>
TV tax: Everyone in Germany must pay the GEZ, also known as the Rundfunkbeitrag. You only pay this tax once per apartment, and it costs 17.50€ per month. If you share the apartment with other people, you can split the cost. In some special cases, you can pay a little less. This guide explains how the TV tax works.
<br>
Quadrameters: The size of German apartments and rooms is measured in square meters (Quadrameter, or qm). A square meter is 10.8 square feet, so a 50 square meter apartment is 540 square feet.
<br>
Value Added Tax: If you rent a furnished apartment for less than 6 months and 1 day, you must pay a 7% tax with your rent.
<br>
Wohnungsgeberbestätigung: When you move in, you get a Wohnungsgeberbestätigung from the landlord or from the main tenant. This document confirms that you live there. You can't do your Anmeldung without it. The landlord can't refuse to give you this document. The landlord can't refuse to let you register.
<br>
How to improve your chances?
<br>
Finding an apartment in Berlin can be extremely demanding. The Berlin rental market is extremely competitive, so you need to work hard to find a place.
<br>
Be a perfect candidate: Landlords prefer tenants with a stable job and a high income. Ideally, your income should be at least 3 times the rent.
<br>
Call and write: Landlords don't have time to answer emails, so if you find an apartment you like, call immediately. Write a message too. Some people prefer to read messages than to answer the phone. Speak and write in German to improve your chances.
<br>
Come prepared: When you visit an apartment, having all the documents with you can improve your chances1. You can even fill the application form in advance, just in case.
<br>
Don't have pets: Many landlords prefer tenants without pets. Pets make it harder to find an apartment.
<br>
Write a cover letter: Write a simple cover letter in German explaining who you are and what you are looking for. This will separate your application from the rest."
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1526043446186-2ff4028f978b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create(
    user: User.where(mentor: true).sample,
    title: "How To Get an Anmeldung",
    summary: "I made an appointment before I even arrived to Berlin, and I will tell you how you can too! Avoid the long lines and stress of trying to book an appointment with these easy steps.",
    content: "One of the first German words you’ll learn when you move to Germany is “Anmeldung.” Sure, you’ll learn a few of the basic conversational terms like danke, bitte and Entschuldigung, but we guarantee you’ll learn this one soon enough. Why? Because when you move to Germany, you have to do more than just find a place to live and find a nice local bar to celebrate. You’ll have to register your address within 14 days of moving through a process known as Anmeldung, and receive your certificate of registration, otherwise known as an Anmeldebestätigung or Meldebescheinigung. This is one of the essential pieces of paperwork, and you’ll need it to get health insurance, university registration, a residence permit and anything else that requires proof of residence.
<br>
<br>
German bureaucracy’s catch-22
<br>
You may be thinking — back up a little bit, how do you even find a place to live and get a rental contract? Well that’s the classic catch-22 of the Anmeldung. You need a rental contract to register your address, but you need a certificate of registration to get a rental contract. Some say it’s just as easy as putting your name and signature on a friend’s existing contract, or taking a signed sublease contract from a temporary accommodation. Whether or not you actually live there at the time is a separate question.
Your initial exposure to the famous German bureaucratic machine can be stressful, but you can easily avoid the angst if you follow some simple advice. First, you need to book an appointment. Look up your city’s Bürgeramt or Einwohnermeldeamt registration office online, and make your reservation long in advance, because you might not be able to get an appointment for weeks. If there are no appointments available, try refreshing the page early in the morning and throughout the day, because people frequently cancel their appointments. You can go to any location in your city, even if it’s not in your neighborhood.
<br>
<br>
What to do to prepare
<br>
To register your German address, you’ll need the following documents:
<br>
Valid passport or national ID
<br>
Rental agreement from your landlord (Wohnungsgeberbestätigung), usually a signed rental contract
<br>
Registration form, either called Meldeschein or Anmeldung. These are only available in German, so fill this out beforehand
<br>
That’s another thing to keep in mind. Anmeldung isn’t just for foreigners moving to the country, so the whole process is conducted in German. You may be lucky and get an appointment with an English speaker, but there are no guarantees. We recommend bringing a German-speaking friend with you, or sending a German speaker on your behalf. That person just needs a signed letter from you giving your consent, otherwise known as a Power of Attorney, or Vollmacht in German, in addition to the documents listed above.
<br>
One of the less familiar items on your form will be a line item about your religious affiliation. Leave it blank if you don’t want to pay the church tax, which is around 8–9% of your income tax depending on your region. The entire process only takes a few minutes, and you’ll receive your stamped certificate on the spot. Remember to put your name on your new mailbox when you get home because you’ll definitely receive mail at your registered address, and mail is generally returned to the sender if your name isn’t there. Don’t worry too much if you’re unable to register within 14 days, but do it as soon as you’re able.
<br>
<br>
Other things to keep in mind
<br>
When you move to a new flat in the future, you have to formally change your address the same way you originally registered the old one. When you move away from the country, you’ll have to unregister completely, otherwise known as Abmeldung. This is useful if you need to cancel any long-term 24-month contracts like your phone or internet plans. The same goes for your Rundfunkbeitrag, the national TV and radio tax.
<br>
The whole address registration and de-registration cycle may feel like a nuisance, but you learn to adapt quickly, and it’s a worthwhile exercise in logistical responsibility. Figuring out the Anmeldung is one big step towards getting used to German bureaucracy and settling into your new life here."
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create(
    user: User.where(mentor: true).sample,
    title: "Becoming a Freelancer",
    summary: "So many expats are moving to the city and they want a flexible lifestyle. How to travel around Europe while still getting paid.",
    content: "Have you ever enjoyed the idea of getting your work done NOT worrying about hours you have to devote inside the workplace, or other procedures and conditions that the company wants you to be familiar with? Have you ever wondered how working independently functions? Well, if so, we think that freelance could be a good alternative for your future career.
<br>
Globally, serving for proficient individuals as the way to generate higher incomes compared to a classic contractual job there are various vacant freelance opportunities. Freelance work is associated with the increased necessity of modern societies for multi-employment, due to higher living standard and increased costs as a result, for generating bigger profits and getting more time that is personal.
<br>
Talking about the importance of freelance, the fact is that many freelancers do not realize that through their work they by some means step-in into the world of business, by becoming bosses of themselves only.
<br>
<br>
Benefits of freelancing
<br>
Whereas a contractual job tend to be safer, covering fixed employed period with an opportunity to be changed into permanent job, in a freelance job the worker has a wider independence but a freelance arrangement cannot be altered it into a permanent job.
<br>
However, freelancers benefit in many other ways. As a freelancer you can decide when and where to work; there are no specific working conditions and rules; there are no working hours to be calculated; less taxes to be paid, higher chance to work in different jobs/projects meantime; no need to attend the office or have regular meeting with the employer/buyer of the product/service; more working creativity.
<br>
<br>
Freelancing in Germany
<br>
Freelancing in Germany classifies as a self-employment job, with minor dissimilarity. As a freelancer “Freiberuflich” in Germany, you become a subject to pay fewer taxes compared to a self-employment job. Self-employment jobs significantly relate with business shortages of Germany, and so the issuance of residence and work permit under self-employment purposes greatly relates with that. Freelance jobs, due to their independent nature, do not closely relate to the job shortages. Freelance jobs in Germany mainly relate to professions such as painters, artists, performers, scholars and scientists, authors, teachers, educationalists, reporters, doctors, interpreters, dentists, commercial advisors, attorneys, and a comprehensive list of other professions.
<br>
In spite of the independence of freelance professions, the German Residence Act “Aufenthaltsgesetz” were established as an instrument for monitoring the migration process of foreigners who seek to implicate themselves into Germany’s economic activity. In respect to this, there is a strict selection process of visa application, greatly correlated to the present state of German labor market and its need for qualified workers. Accordingly, Germany issues freelance visa – a temporary residence permit to work as a freelancer that is in full accordance to German Residence Act, section 21 and paragraph 1.
<br>
Explaining the passage that a non-EU should go through for becoming an eligible freelancer in Germany the article will attempt to distinguish steps for doing so.
<br>
<br>
Step one – Freelance Visa
<br>
Eligibility for working as a freelancer in Germany depends on the country of origin of the individual. For that reason, non-EU freelance-seekers in Germany must identify rules and regulations applied for their own country in specific.
<br>
Hence, being visa-free to enter Germany, non-EU nationals of US, Japan, Israel, Australia, Canada, Korea, and New Zealand shall apply for the work permit once in Germany, with validity up to three months. Three months after, they must choose to either go back in their home country or settle down the residence permit at Foreigner’s Registration Office, a permit giving the right to reside and work as a freelancer in Germany. The residence permit at any case must indicate the reason for staying in Germany under the intention of freelancing.
<br>
Foreseen for non-EU nationals who are a subject to visa restriction for entering and working in Germany, Freelance Visa is compulsory. German Embassy or Consulate in the living country is the address where you shall apply and get this visa type. Successful freelance visa holders are only individuals for which “Bundesagentur Für Arbeit” of Federal Employment Agency of Germany agrees so, as the institution that evaluates each work visa application.
<br>
<br>
Step two – Getting your German identification number
<br>
Let us say that you as a freelance visa holder now entered Germany and found the proper accommodation, there are several things to carry on in advance, before launching your freelancing activity.
<br>
As a freelance visa holder, you shall register at “Bürgeramt” or Local Registration Office in the respective German city in seven days after being lodged. Registration consists of appointing online a registration meeting, which does not take much time. During the meeting a duly-completed application form must be submitted (entirely in German) as one with passport, visa, rental contract and proprietor’s “Vermieterbescheinigung”- a verification letter affirming the time of relocation of the aspirant in the apartment/house/room.
<br>
The identification number given upon the registration, after just few days, supports your further registration at German Tax Office for getting: Tax number, opening a German bank account, paying internet, telephone contract, electricity, and so on. It takes about four weeks or more to obtain the tax number by post mail. The number that you as a freelancer receive when registering its location is called Identification Number “Identifikationsnummer”, Tax Identification Number “Steueridentifikationsnummer” or Tax ID “Steuer-ID” but the three of them refer to the same number and are the same thing. You can find more information here.
<br>
<br>
Step three – Getting your German Tax number
<br>
Regardless that you are a freelancer, in Germany paying Income Taxes 'Einkommensteuer' annually is a compulsion. Nevertheless, these taxes are pretty lower than for individuals involved in contractual or permanent jobs.  As a freelancer, you must get “Steuernummer” or Tax Number as the permit for acting an eligible freelancing activity in Germany. Registration procedure involves submitting duly completed Tax Number Registration Form, so called “Fragebogen zur Steuerlichen Erfassung” at the nearest Tax Registration Office of the city of residence.
<br>
<br>
Step four – Toward the Freelance World
<br>
From the time that you receive Tax Number from German Tax Office you are ready to think about freelancing plan, as you automatically become an eligible freelancer permitted to start your commercial activity and sending clients the invoices with the Tax Number in it.
<br>
<br>
Opening a Freelance Bank Account
<br>
Surely, as a freelancer you will need a bank account for receiving payments from its clients.  It is necessary to mention here that are different options for opening bank account. There are specific accounts for freelancers, so make sure to require information either online or directly from the information desks of local banks to know which among options is mostly suitable in your case.
<br>
<br>
Taking health Insurance
<br>
There are two categories of health insurances: public (statutory) and private. As a freelancer staying temporarily in Germany, you are highly suggested to take private health insurance as getting public one can be more demanding, as you will be treated as a subject to have irregular monthly incomes. Mawista Employee is a product especially designed for Freelancers, as well as for Employees and Expatriates in Germany.
<br>
<br>
Catching clientele
<br>
There are plenty web-based platforms for you to bump into freelance jobs online, but just registering and waiting for someone to hire you is not the case. You will absolutely need to influence your clients launching there a very expressive portfolio of your past work, with a clearly written bio or curriculum vitae and presenting surplus skills grown thru specific trainings. The idea behind it is to present the best of you in front of your potential clients, a touch that will differentiate you from other freelancers, fostering your chances to be hired.
<br>
Different virtual freelance jobs are available starting from web design, graphic design, writing, photography, research, data analysis, web programming, seo, online marketing, consulting, IT and many others. Try to match a job that fits your skills, experience, and boost your readiness to create fruitful relations with clients. Consider finding more than one job, as having just a sole client over a year might declassify you as a freelancer.
<br>
If you are not a computer-friendly individual who aspires to have an offline freelance job then reaching preferred job vacancies can be done over usual job-hunting channels such as newspapers, career online portals, Facebook and different specialized job-posting groups. Search if there are specific Facebook, Google, Yahoo or Twitter groups, where you might commerce your availability to work on specific freelance jobs (i.e. writing, teaching, trainings, designing, photographing). Consider also searching for local freelance groups and attend their meetings to catch up interesting jobs.
<br>
<br>
Paying Taxes and other fees
<br>
The next step forward for you when starting the freelance job is paying taxes and other fees as of the commercial operations you make.
<br>
<br>
Income taxes
<br>
In difference to contractual jobs where the employer pays tax incomes on behalf of the employee, as a freelancer you do not have an employer so you have to pay them on your own and payable income taxes must include one calendric year of commerce activity. Your Incomes declaration as a freelancer must be done in the form of profit/loss assessment, which is so much simpler compared to declaring the annual financial statements.
<br>
To declare incomes and pay income taxes in Germany there is an electronic system called 'ELektronische STeuerERklärung – ELSTER' or electronic tax declaration. There is software that helps on this regard where you will need to fill in your tax form “Mantelbogen” including your name, address and bank details, as well as other tax forms “Anlagen” which differs based on the level of your income. As a freelancer, you must fill-in the 'Anlagen S' while health Insurance payments must be paid through 'Anlage Vorsorgeaufwand', and so on.
<br>
In respect to value added tax (VAT) if you make annual incomes up to 17,500 € you are not called to charge VAT to your clients but you can do so, while if you exceed making more incomes than that you are obliged to do so.
<br>
You might find some explanations about how ELSTER functions as presented here.
<br>
<br>
Social Security Fee
<br>
If your monthly net revenues exceed 450 €, as a freelancer you also need to pay for the Social Security Pension Scheme. For 2015, 18.7% is the rate applied over the monthly income, to be paid entirely by you, as you do not have any contractual employer. If being a junior freelancer, in your three first years of freelance activity you can require 50% reduction of Social Security Pension rate. In addition, if you leave Germany inside 60 months of freelance work you can require pulling out the generated pension trust.
<br>
<br>
Become a successful freelance story
<br>
Being inside the freelance world implicates the need for possession of the knowledge, skills as well as enjoyment perfected by readiness to self-manage diverse aspects of your own job. Being a slow-beginner and waiting for results to come perhaps will never grow any substantial income. As a freelancer, you must own a complex set of skills assuring your achievement, consistency and sustainability. These skills are research, accountability, communication, interactivity, marketability, self-discipline, negotiation, contact making, problem solving, project management, time management, risk estimation, writing, proofreading and so on.
<br>
Ergo, launching a good freelance career you must plan ahead with the preparation of business plan. Not exceeding deadlines by preparing and following a strict working hours-timeframe for each project, will surely grab the attention of your clients and readiness to cooperate in longer terms. Launching a blog or personal website where you can be more close to the audience and using a logo –will distinguish you from the others and will straightforward your uniqueness. Being creative and flexible and not sticking to your idea by using also clients’ advices will surely help making your clients feel safer with your work. Expanding your contacts, using LinkedIn, Facebook and other virtual social and professional networks will increase your chances to get your freelance work promoted.
<br>
Moreover, the last advice to you: Do not ever underestimate working opportunities, but do not sell your work cheap, as this sometimes can be understood as a lack of quality."
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1548061202-83d4ccfa0155?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create(
    user: User.where(mentor: true).sample,
    title: "Founding Your Own Business",
    summary: "I founded my own catering company five years ago. It was not easy, but with some time and patience anyone can become a start-up founder!",
    content: "Step 1: Register your address in Germany (Anmeldung)
<br>
<br>
In Germany, you must register your address every time you move. The address registration process is called the Anmeldung. When you register, you get a tax ID (Steueridentifikationsnummer) and a certificate of registration (Anmeldebestätigung). You will need these later.
<br>
<br>
You need the certificate of registration to open a bank account, and you need a bank account to register your business with the Finanzamt. You also need a tax ID to register your business.
<br>
<br>
For more details, see How to register your address in Germany and How to find your tax ID.
<br>
<br>
In this step, you need:
<br>
<br>
A place to live in Germany
<br>
The required documents for the the Anmeldung
<br>
In this step, you will obtain:
<br>
<br>
A tax ID (Steueridentifikationsnummer)
<br>
A certificate of registration (Anmeldebestätigung)
<br>
<br>
Step 2: Open a bank account
<br>
You will need a German bank account when you declare your business to the Finanzamt, and when you start paying taxes. If you don't have a bank account yet, take a look at our overview of German banks.
<br>
You do not need a business account; a normal bank account is fine. However, some banks will close your account if you use it for business purposes.
<br>
Bank accounts in other European countries are also fine, as long as they support SEPA transfers.
<br>
In this step, you need:
<br>
A certificate of registration (but some banks don't require it)
<br>
In this step, you will obtain:
<br>
A bank account
<br>
<br>
Step 3: Get the right visa
<br>
If you are not a European Union citizen, you are not allowed to freelance in Germany without a visa.
<br>
On your residence permit (Aufenthaltstitel), look for a line that says 'Selbständige Tätigkeit gestattet' (self-employment allowed). If your residence permit has that line, you can freelance or start a business in Germany. If it doesn't, you must apply for a German freelance visa.
<br>
In this step, you will obtain:
<br>
A residence permit (Aufenthaltstitel)
<br>
The permission to be self-employed in Germany
<br>
<br>
Step 4: Find a tax advisor
<br>
Tax advisors are very expensive in Germany, but they will save you a lot of money. They can register your business for you and take care of your tax declarations. They will help you avoid many mistakes with taxes and health insurance.
<br>
See our list of English-speaking accountants and tax advisors in Berlin.
<br>
<br>
Step 5: Know if you are a Freiberufler or a Gewerbetreibender
<br>
Later, you will need to register your business with the tax office (Finanzamt). They will decide if you are a freelancer (Freiberufler) or a tradesman (Gewerbetreibender).
<br>
The difference is very important. Tradesmen must get a trade licence (Gewerbeschein) and pay a trade tax (Gewerbesteuer). They must also be listed in the trade register (Handelsregister) and follow different accounting rules. You must do these things before registering your business with the Finanzamt.
<br>
Life is much easier for Freiberufler, but not every freelancer is a Freiberufler! This title is reserved for specific professions. Engineers, doctors, architects and teachers can be Freiberufler. Common jobs like food delivery driver or tour guide do not qualify as Freiberufler, but as a Gewerbe1, 2.
<br>
See Freiberufler or Gewerbe, what's the difference? for a detailed explanation.
<br>
<br>
Step 6: Get a trade licence (Gewerbeschein)
<br>
If you are a registering a Gewerbe, you must get a trade licence (Gewerbeschein) before visiting the Finanzamt.
<br>
In Berlin, you can obtain your Gewerbeschein from your local Ordnungsamt. You can also do it online. This guide shows you how.
<br>
In this step, you will obtain:
<br>
A trade licence (Gewerbeschein)
<br>
<br>
Step 7: Register your business with the Finanzamt
<br>
The next step is to declare your business to the Finanzamt. You do this by filling the Fragebogen zur steuerlichen Erfassung. You must submit this form to your local Finanzamt in person or by mail.
<br>
This is a long and complicated form. Your tax advisor can fill it for you.
<br>
In this step, you need:
<br>
A tax ID (Steueridentifikationsnummer)
<br>
A European bank account
<br>
A trade licence (Gewerbeschein) - only required for tradesmen (Gewerbetreibender)
<br>
In this step, you will obtain:
<br>
A tax number (Steuernummer)
<br>
A VAT number (Umsatzsteuernummer)
<br>
<br>
Step 8: Inform your health insurance company
<br>
If you already have health insurance, you must tell your insurance company that you are going freelance. Health insurance for freelancers is more expensive, since your employer is not paying half of it. The money will be taken directly from your bank account every month.
<br>
If you have public health insurance, the cost of your insurance depends on your income. Since you don't know your future income, you will give an estimation. If you pay too much insurance, you will get a refund later. If you don't pay enough, you will get an invoice later.
<br>
See Health insurance in Germany
<br>
<br>
Step 9: Update your website
<br>
If you have a website, make sure it complies with the various German and European regulations. There are stories of website owners receiving damage claims because they had a missing Impressum or incorrectly attributed photos."
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1526907858462-4b1c6b0a0dcc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
article = Article.create(
    user: User.where(mentor: true).sample,
    title: "Work Life Balance, and What to Expect",
    summary: "Tired of a 40 hour work week? Welcome to Germany, where the average work week is 35 and the breaks are mandatory.",
    content: "The issues around finding the balance between family life, private life and work are gaining increased attention in political and business circles in Europe and Germany.
<br>
<br>
A key issue for many workers is flexible working time in order to have a work-life balance. Negotiating a work/life balance can help enable parents (both men and women) to reconcile their work with their family lives and women in particular to participate in the labour market. Finding the right work-life balance can allow workers to take leave from work so that they can participate in education or training or take up an interest, hobby or leisure pursuit. This may mean that employees can reorganise their working lives and hours around shorter days, weeks, months or years.
<br>
<br>
German families tend to be small with only one or two children. The men are still quite often considered to be the head of the household, even though both the wife and husband work.
<br>
<br>
At the turn of the century few employees in Germany were given holidays. In 1902, the metal and brewing industries gave three days annual leave to their workers. It was not until 1974 that the old Federal Republic introduced the statutory minimum holiday of 18 working days which has now risen to a minimum of 24 days. Today most collective wage agreements provide for holidays of six weeks or more and most employers give  holiday pay.
<br>
<br>
For further Information visit:
<br>
OECD Work-Life Balance: http://www.oecdbetterlifeindex.org/topics/work-life-balance/
<br>
National holidays
<br>
Germany has quite generous holidays in comparison to other European countries. There are more public holidays in Germany than in any other European country. On these days, banks and most shops are closed, including supermarkets. However, many restaurants remain open. Public transportation and other services are also available. Many shops and businesses are also closed on Carnival Rose Monday (Cologne and Rhine region), Christmas Eve and New Year’s Eve although these are not official holidays.
<br>
Overview of legal holidays:
<br>
New Year                   01.01
<br>
Epiphany                    06.01   (celebrated in BW, BY, ST)
<br>
Good Friday               around March/April
<br>
Easter Monday                       around March/April
<br>
Labour Day                01.05
<br>
Ascension                   May
<br>
Whit Monday              May
<br>
Corpus Christi                        May/June (celebrated in  BW, BY, HE, NW, RP, SL)
<br>
Assumption Day         15.08   (celebrated in  BY, SL)
<br>
Day of German Unity             03.10
<br>
Reformation Day        31.10   (celebrated in  BB, MV, SN, ST, TH)
<br>
All Saints’ Day                        01.11   (celebrated in BW, BY, NW, RP, SL
<br>
Penance Day               21.11   (celebrated in SN)
<br>
Christmas                    25.12
<br>
St. Stephen’s Day        26.12
<br>
(Those States where the public holiday applies are shown in brackets; if nothing is indicated the holiday applies to all of Germany.)
<br>
<br>
Working hours
<br>
Opening hours
<br>
In Germany, businesses and shops are not legally allowed to stay open as long as they please and there are strict regulations concerning opening and closing hours. The German federal law 'Ladenschlussgesetz' (Shop Closing Law) together with individual regulations in different States controls opening hours. Thus supermarkets for example close at 22.00 at the latest and open before 9 a.m. or 10 a.m. On Sundays almost everything is closed with the exception of bakeries and petrol stations.
<br>
Working times
<br>
The German Working Time Regulations ('Arbeitszeitgesetz') regulate working hours on a legal basis. They are based on the European regulation 93/104/EG. In addition, most industries have collective agreements that regulate working hours and holidays. However, it can be said, that a working week of more than 48 hours on average during a  6 month period must not be exceeded. Furthermore, Sundays and national holidays are non-working days.
<br>
For further information please visit:
<br>
Working-in-Germany: http://www.working-in-germany.com/work-hours-law-0206.html
<br>
Lonely planet: http://www.lonelyplanet.com/germany/work-study-volunteering/work
<br>
<br>
Working culture
<br>
Germans see themselves as modern, liberal and cultured, and working practices are formal and professional. The following outlines the working practices that you should be familiar with before investing in Germany:
<br>
Though long-term relationships are considered very important, friendships are usually not developed too quickly. It may take some time before personal names are used between non-familial parties.
<br>
German business culture has a well-defined and strictly observed hierarchy, with clear responsibilities and distinctions between roles and departments.
<br>
Professional rank and status in Germany is generally based on an individual’s achievement and expertise in a given field. Academic titles and backgrounds are important, conveying an individual’s expertise and thorough knowledge of their particular area of work.
<br>
An important aspect is Germany’s work ethic. Employees define themselves as part of the corporation they are working for and quickly identify themselves with its product and/ or services.
<br>
Rank is very important in business. Never set up a meeting for a lower ranked company employee to meet with a higher ranked person.
<br>
Notwithstanding what has been said previously, today over half of all university graduates are women. Female students are well represented in the professions; they lead in some fields such as medicine and law. The new availability of qualified female graduates is likely to bring great changes in the German workplace of the future.
<br>
Pay and power inequalities are still present however. Male employees tend to receive higher wages than their female counterparts. Jobs considered as being “women’s work” typically pay less than those deemed 'men’s work'.
<br>
In more traditional companies, it is still generally true that everything is run by committees, things are discussed in great length and risk taking is not as common as in other countries.
<br>
There is one philosophy for almost everybody in German business: if someone says he is going to do something, he will do it. The same is expected of others as well. Never make a promise that you cannot keep or offer something that you cannot deliver. Germans dislike and do not trust unreliable people.
<br>
There is no legislated or administratively determined minimum wage. Collective bargaining agreements set minimum pay rates and are enforceable by law for an estimated 80 to 90 per cent of all wage and salary earners
<br>
Federal regulations limit the working week to a maximum of 48 hours, but collective bargaining agreements may supersede these. Contracts that directly or indirectly affect 80% of the working population regulate the number of hours of work per week.
<br>
The average working week is around 40 hours; rest periods for lunch are accepted practice. Provisions for overtime, holidays, and weekend pay vary depending upon the applicable collective bargaining agreement.
<br>
An extensive set of laws and regulations govern occupational health and safety. A comprehensive system of worker insurance enforces safety requirements in the workplace.
<br>
It is important that these issues are examined and understood before setting up a company and employing a workforce in Germany. These issues differ all over Europe but legal guidelines are set by the European Commission."
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1588605360336-77ac8ee6fc53?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create(
    user: User.where(mentor: true).sample,
    title: "Top 10 German Language Schools in Berlin",
    summary: "Break through all the google reviews and get to the credentials that really matter: discover all the great schools Berlin has to offer.",
    content: "Are you ready to speak German like a native? Do you want to travel and make friends around the world? Learning German in Berlin can make it happen. We researched the best language schools so you don't have to.
<br>
German is famous for having long words such as 'kraftfahrzeughaftpflichtversicherung', which means 'automobile liability insurance'. This is because German makes extensive use of compound words, which can build on each other to create monstrosities. According to Wikipedia, German is the 11th most widely spoken language in the world, with about 1.4% of the population being German-speaking.
<br>
Learning German is a lot easier with a great app. German Translator Dictionary + by VidaLingua has the tools you need to succeed. You can download it for free on your iPhone or Android. Give it a try!
<br>
<br>
Speakeasy
<br>
Speakeasy offers conversation-based courses for German, English, Spanish & Italian from beginner to advanced level (A1 to C2). When it comes to German courses, They offer the full range of morning, afternoon and evening classes. Learn at your own pace by choosing an intensive course, an evening course or a super-intensive course that combines both day and evening elements. If you are after an official qualification for university admission or job purposes, you can take a TELC examination at Speakeasy language school in Berlin, recognized worldwide. Speakeasy also provides in-house corporate training in both English and German, which can be designed according to your business needs.
<br>
<br>
ALPADIA Language Schools
<br>
Located in the vibrant Schöneberg area, ALPADIA Language Schools offers a variety of German courses: Standard, Intensive, Private lessons and Exam preparation (German TELC, TestDaF or Goethe exam). It also provides University Pathway and Internship programmes for students interested in studying and living in Germany. ALPADIA also provides a wide range of accommodation options (host family, student apartment, student residence, etc.) and organise many other immersion activities for its students like excursions, cooking classes, etc.
<br>
<br>
Anda Sprachschule
<br>
Anda Sprachschule is a friendly language school located in Friedrichshain and Prenzlauer Berg, two of the nicest neighborhoods in Berlin. Their offer includes intensive courses (20h per week), evening courses, private lessons and company courses. Furthermore students can take TELC Exams with great discounts directly at the school.
<br>
<br>
Humboldt Institut
<br>
The Humboldt-Institut is known for its intensive German courses. With 30 lessons per week a total beginner can reach a German level of B2 after only 20 weeks. The Berlin campus is centrally located in Mitte (Nordbahnhof station) and offers bright, modern classrooms, a cafeteria and comfortable rooms for those who book the full package including accommodation, full board and daily after-class activities.
<br>
<br>
DIE NEUE SCHULE
<br>
DIE NEUE SCHULE was founded in 1984 and with more than 1000 participants per year from more than 40 countries is today one of the largest and most renowned language schools in Berlin. Centrally located in the green, relaxed district of Wilmersdorf, DIE NEUE SCHULE offers a wide range of German as a foreign language courses at all levels, as well as in-house examinations (B1 – C1) and the university examination telc Deutsch C1 Hochschule.
<br>
<br>
GLS Campus Berlin
<br>
The GLS campus is a green oasis in the center of Berlin, with 2 boutique hotels on campus for course participants. German courses start every Monday on all levels. GLS is a testing center for TestDaF and Telc and has a University Pathway program for international students.
<br>
<br>
Kapitel Zwei
<br>
All course levels are available, from absolute beginners (A1) to advanced (C2). At €242 for a 4-week course, Kapitel Zwei Berlin is one of the best value language schools in Berlin – centrally located between Alexanderplatz and Jannowitzbrücke.
<br>
<br>
Sprachenatelier Berlin
<br>
This language school in Berlin offers intensive German courses for learners of all levels. Learn German with world-class language teachers and international students.
<br>
<br>
DeutschAkademie
<br>
German course in Berlin Mitte at Alexanderplatz. Learn German at a German language school. Small groups, interactive and effective German courses. The DeutschAkademie has two locations in Berlin: At Alexanderplatz in the “Haus des Lehrers,” and at Wittenbergplatz opposite the KaDeWe department store.
<br>
<br>
Sprach Salon Berlin
<br>
Located in the heart of Neukölln, Sprachsalon offers German courses at all levels of language (from A1 to C2). It is taught in small groups of 6 to 12 participants. This has the advantage that you can speak a lot from the beginning and be personally cared for.
<br>
<br>
Expath
<br>
Stephan Brenner and Tia Robinson founded Expath in 2012 to help 'new Berliners' with German bureaucracy and provide exceptional German language lessons. Their goal? To give people the tools, skills, and information necessary to live in Germany successfully. The school is right on Rosenthaler Platz in Mitte."
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1574904937426-89a94e79012c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create(
    user: User.where(mentor: true).sample,
    title: "How to Buy a Bike in Berlin",
    summary: "You want to make sure you are not buying a stolen one, but still want a great deal! The latest scoop on how to find a great bike, a little app that is called BikeMatch!",
    content: "There are of course plenty of shops with brand-new bikes, shining behind the front window. If you have the means and you are using your bike everyday, it’s definitely worth investing 400+€ for the vehicle that will have all the safety features to take through the traffic every day of the wear. A good bike is your best protection against an accident (with the helmet of course). A new bike also comes with a guarantee and several months of free maintenance at the shop.
<br>
Hands down, the best shop to compare models, with a huge selection to try on the spot in Berlin, that is Stadler. The spot in Prenzlauer Berg is especially nice, close to Storkowerstr. Sbahn. Nice knowledgeable staff, not pushy. Stadler in Charlottenburg & Prenzlauer Berg.
<br>
<br>
Other options include
<br>
Real at Neukölner Tor has a discount shop on the upper level where they sell bikes.
<br>
Bike Market City in Wilmersdorf
<br>
Bike Market in Tegel
<br>
FroschRad in Kreuzberg
<br>
However, we don’t always have that kind of cash lying around, so we must turn to the second-hand market to buy a bike in Berlin. The good news is that there are plenty of options to find the gem.
<br>
<br>
Second-hand bike in Berlin
<br>
The first reflex is to turn to classifieds such as Ebay Kleinanzeigen & Craigslist which both have a wealth of offers, from the cheap good-for-a-summer bike all the way to the vintage options.  A lot of choice but it’s often hard to judge the quality on pictures and you will have to go places to have a look at it. The specialized website Dealmywheel is also classifieds but for bikes only. Fietsenbörse is a platform organizing flee markets for bikes every month or so with the added bonus of independent assessment of bicycles’ quality on site!
<br>
<br>
Of course, you can turn to flea-markets around the city to find your gem, but the relatively high-prices often don’t match the low(er) quality.
<br>
<br>
Some shops are also selling second-hand bikes in Berlin:
<br>
Each year, this bike rental company Fahrradstation is selling the bikes they used during last season. The quality is top notch, used only one year and at reasonable prices. More info there.
<br>
The company Berlin on Bikes is also doing exactly that via their repair shop Re Cycles.
<br>
The shop Bikeopia is buying old bikes in bulk, fixing them and reselling at a fair price.
<br>
The shop Fietswinkel is renting & selling second-hands bikes too.
<br>
The shop CultureRoad is offering bikes from 60€.
<br>
Fahrrad Recycling – Cheap road-worthy bikes.
<br>
Bike A-way is on a mission to give bikes a second life and sell them at a fair price.
<br>
BikePark  is specialized in second-hand bikes in Berlin
<br>
BikeMobil as well
<br>
Gefa Berlin too
<br>
The AFDC has a listed a few more options on their website as well.
<br>
<br>
Last little-known option: auctions! The Police & the BVG sell part of the bikes they have found but that were not reclaimed. They hold auctions to get rid of those. Prices can be as low as 5€ or 15€ for really good bikes ! More info here & here.
<br>
What about online?
<br>
<br>
The internetz have a wealth of options if you want the best price around. Raddiscount.de has a special category of last year’s products with discounts up to 50% on new bikes. KCP Bikes also have season sales.
<br>
<br>
Insurance & stuff
<br>
The clear advantage of buying it in a store is that you have a proof of purchase that allows you to register your bike, which you can’t do buying from flea-markets or from Ebay. Registering your bike in Berlin allows you to prove the ownership of the bike and help you if it gets stolen. You can register your bike with the police by following this link and picking the next possible time slot.
<br>
Insurance-wise you can get you bike covered by your 'Hausratversicherung'. If you haven’t subscribed to one, you really should. It covers all the things you own in your flat & your bike in that case. Websites like Preisvergleich can help you find the best rates."
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Creating 1 fake article...'
file = URI.open('https://images.unsplash.com/photo-1527150602-a98f7a6f2746?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  article = Article.create(
    user: User.where(mentor: true).sample,
    title: "Pet Passports",
    summary: "You might be considering a move to Germany, but have a furry friend you wish to take a long! Never fear, here is a list of all the things to keep in mind when moving your pet internationally.",
    content: "Pets are becoming more and more a part of the family. They live in our homes, sleep in our beds, and the lucky ones even join us on vacations. So when considering relocation to another country many pet owners would never dream of leaving their furry family members behind. Thankfully for us pet-people, German-speaking countries welcome pets, especially dogs. While moving with your pet to Austria, Germany, or Switzerland may be far less complicated than say to the UK where quarantine rules apply, these countries do require three very important things: a valid rabies vaccination with proof, an identifying microchip, and some additional paperwork.
<br>
<br>
Switzerland, Austria and Germany currently require the standard EU veterinary certificate, formally called Form 988, which your North American vet will likely be familiar with and may have copies available in their office. There is a fee to have this form filled out. In the past this form has required an endorsement stamp from the Canadian Food Inspection Agency or The United States Drug Administration. Currently the form only asks for your vet’s stamp. Be sure to check each time you are to travel as I have found these requirements change time to time. Form 988 can be ordered online or downloaded through various websites, for example:
<br>
<br>
EU Pets Info: ec.europa.eu/food/animal/liveanimals/pets/index_en.htm
<br>
In addition, depending on what airline you will be traveling with, some require their own health certificate stating that the animal is fit to fly. Again, regulations can change over time so it is always best to give yourself plenty of time before your intended departure to be sure all the necessary paper work is completed and regulations are met, and within the time frame required. You don’t want to end up having to delay your departure because of your pet. My move to Germany was delayed while I waited the 21 days necessary to render my dog’s new rabies vaccine valid.  While I was fortunate to have flexibility in my departure date, some employers or families may not be so understanding, and you may have to leave your pet behind or ship it later in cargo.
<br>
<br>
In addition to preparing the paperwork it also very important to properly prepare our pets for the long journey.  If you are lucky enough to be able to bring your pet in-cabin you will likely find the experience far less stressful than those who must put their pets below in the dark cargo hold of the plane.  As the owner of three dogs, two which I deem “travel friendly” since they fit so nicely under the seats in front of my husband and I, and the other that must go below, I have much experience with both scenarios.  For both circumstances the most important thing you can do ahead of time is get your pet used to its carrier. If your pet is already kennel-trained you will find this easy, but if your pet has spent little or no time in a cage you are going to need to start practicing as far in advance as possible. The last thing you need is a howling cat on-board or a dog that breaks its claws or teeth trying to escape its kennel. In fact, airlines state that the number one cause of injuries and fatalities of pets during travel is due to those animals that attempt or manage to escape their carrier on the tarmac, before or after the flight. Undoubtedly it is very stressful for your pet to fly, adding the fear of being kenneled for perhaps the first time could surely lead to some desperate escape attempts. Make your pet’s kennel a familiar and comfortable place. This has to be done in small steps, increasing time little by little. This will also help them learn to hold their bladder since dogs will very rarely make a mess in their own small space.
<br>
<br>
Dealing with bathroom issues is another area that needs some planning. It is not recommended to withhold water from your pet in order to avoid messes en route. Staying hydrated is one of the key factors in staying healthy while flying, for both pets and people. Cutting back on food before the big trip may be advisable to keep your pet comfortable while locked up for such an extended period of time. The most beneficial thing you can do though, is be sure to take your dog for a big walk, or have an indoor play session with your cat, immediately before you are to leave for the airport. You want to get them moving, tired, and hopefully wanting to “use the facilities” before they are caged up.
<br>
<br>
Once you arrive in your new German-speaking country don’t be surprised if airport authorities fail to ask you for all those forms you worked so hard to complete. Of the three trips I have made into Germany and the two into Switzerland, I have only been asked once to show documents. But of course, better safe than sorry; I figure it is a sure bet that the one time I don’t have the right forms is when I will be asked for them.
<br>
<br>
When you are settled into your new home you can then contact your nearest vet or Tierpraxis. I have yet to find a veterinarian in Germany and Switzerland that does not speak English. They will register your pet, making sure that their micro-chip now connects your pet to your new address.  There is usually a fee for this service. You will be give an EU pet passport which is an extremely handy record of your pet’s information and vaccinations. With this passport you will then be able to freely travel within the EU with your pet.
<br>
<br>
My dogs and I have traveled to ten different countries in the four years I have lived in Germany and Switzerland. They have made the experiences so much more fun (and the photos extra cute!). Most European countries welcome pets in their hotels, parks, public transit, restaurants, etc., much more so than in North America. Hiking up the Alps, riding the train along Rhine, sitting in the sand in the Canary Islands – my dogs have done it all. With the proper training and preparation yours can too, and Europe is certainly the place to do it!
<br>
<br>
A few personal tips:
<br>
A good trick for pets traveling in cargo is to freeze the water in the water dish that detaches from the cage. That way it won’t spill while your pet is being loaded onto the plane.
<br>
<br>
For pets in-cabin, keep a few tiny new toys in your bag like bones or cat-mice. If you hear them getting restless pop one in their carrier.
<br>
<br>
To get my cocker spaniel prepared for her first flight to Germany I put her in her kennel in a dark bathroom, with the loud fan on, since such a setting is very similar to the one they will find themselves in within the cargo hold.
<br>
<br>
Do a little online research to find out where the green spaces are located around the airports you will be traveling through. Some airports have them listed on their sites or you may be able to see them on airport maps."
  )
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

puts 'Finished Articles!'

puts 'creating 30 consultations'
30.times do
consultation = Consultation.create(
  asker: User.where(mentor: false).sample,
  mentor: User.where(mentor: true).sample,
  date: nil,
  confirmation: 'pending'
  )
end

puts 'created a consultation'

puts 'Creating 30 reviews...'
  review = Review.create!(
    consultation: Consultation.all[0],
    rating: 4,
    content: "My mentor was professional, reliable, and knowledgeable on the subject. I had so much anxiety about starting the process until I met the amazing mentor who helped me get my paperwork in order and schedule the appropriate appointments. I couldn't have done it without my mentor!"
  )

  review = Review.create!(
    consultation: Consultation.all[1],
    rating: 5,
    content: "10/10 can't recommend WELCOME enough! Their friendly mentors helped me so much when I was a stranger to the city!"
  )

  review = Review.create!(
    consultation: Consultation.all[2],
    rating: 5,
    content: "Thank you for helping me get my taxes together under a crazy deadline in a language I don't speak yet! Couldn't have done it without my wonderful mentor."
  )

  review = Review.create!(
    consultation: Consultation.all[3],
    rating: 3,
    content: "The service was useful, but my mentor didn't know enough about my country of origin's exit requirements so their suggestions weren't super helpful. I think next time I'll just have to rely on Google or a friend."
  )

  review = Review.create!(
    consultation: Consultation.all[4],
    rating: 4,
    content: "Trust the pros at Welcome! I couldn't have done it without you, THANK YOU!!!"
  )
  review = Review.create!(
    consultation: Consultation.all[5],
    rating: 4,
    content: "My mentor was professional, reliable, and knowledgeable on the subject. I had so much anxiety about starting the process until I met the amazing mentor who helped me get my paperwork in order and schedule the appropriate appointments. I couldn't have done it without my mentor!"
  )

  review = Review.create!(
    consultation: Consultation.all[6],
    rating: 5,
    content: "10/10 can't recommend WELCOME enough! Their friendly mentors helped me so much when I was a stranger to the city!"
  )

  review = Review.create!(
    consultation: Consultation.all[7],
    rating: 5,
    content: "Thank you for helping me get my taxes together under a crazy deadline in a language I don't speak yet! Couldn't have done it without my wonderful mentor."
  )

  review = Review.create!(
    consultation: Consultation.all[8],
    rating: 3,
    content: "The service was useful, but my mentor didn't know enough about my country of origin's exit requirements so their suggestions weren't super helpful. I think next time I'll just have to rely on Google or a friend."
  )

  review = Review.create!(
    consultation: Consultation.all[9],
    rating: 4,
    content: "Trust the pros at Welcome! I couldn't have done it without you, THANK YOU!!!"
  )

  review = Review.create!(
    consultation: Consultation.all[10],
    rating: 5,
    content: "I was really happy with my experiance using Welcome my mentor was very helpful and friendly."
  )

  review = Review.create!(
    consultation: Consultation.all[11],
    rating: 4,
    content: "Would recommend!"
  )

  review = Review.create!(
    consultation: Consultation.all[12],
    rating: 3,
    content: "Was overall a good experiance"
  )

  review = Review.create!(
    consultation: Consultation.all[13],
    rating: 4,
    content: "Thanks for all your help"
  )

  review = Review.create!(
    consultation: Consultation.all[14],
    rating: 5,
    content: "I was really happy. Would recmmend to a friend."
  )

  review = Review.create!(
    consultation: Consultation.all[15],
    rating: 4,
    content: "Cool person"
  )

  review = Review.create!(
    consultation: Consultation.all[16],
    rating: 5,
    content: "You saved me! I was so confused before!"
  )

  review = Review.create!(
    consultation: Consultation.all[17],
    rating: 3,
    content: "Thankssss!"
  )

  review = Review.create!(
    consultation: Consultation.all[18],
    rating: 4,
    content: "What a cool app idea! My mentor was helpful and kind."
  )

  review = Review.create!(
    consultation: Consultation.all[19],
    rating: 4,
    content: "Super fun, was stressed now not so much!"
  )

  review = Review.create!(
    consultation: Consultation.all[20],
    rating: 5,
    content: "Really liked my mentor- they were very helpful!"
  )

  review = Review.create!(
    consultation: Consultation.all[21],
    rating: 3,
    content: "Really enjoyed working with my mentor"
  )

  review = Review.create!(
    consultation: Consultation.all[22],
    rating: 4,
    content: "My mentor was very helpful!"
  )

  review = Review.create!(
    consultation: Consultation.all[23],
    rating: 5,
    content: "My mentor was great, would recommend"
  )

  review = Review.create!(
    consultation: Consultation.all[24],
    rating: 4,
    content: "Welcome was useful, would recommend"
  )

  review = Review.create!(
    consultation: Consultation.all[25],
    rating: 4,
    content: "They really helped clear up my issues- I now have my visa and am very happy"
  )

  review = Review.create!(
    consultation: Consultation.all[26],
    rating: 5,
    content: "My mentor was great, would recommend"
  )

  review = Review.create!(
    consultation: Consultation.all[27],
    rating: 3,
    content: "Thankssss!"
  )

  review = Review.create!(
    consultation: Consultation.all[28],
    rating: 5,
    content: "Excellent"
  )

  review = Review.create!(
    consultation: Consultation.all[29],
    rating: 4,
    content: "Enjoyed talking with you!!"
  )

  puts 'Finished creating 30 Reviews!'

  puts ' creating 30 comments'

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[0],
    content: 'Really interesting read! It has been very helpful, thank you!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[0],
    content: 'Not sure I agree with your solutions, but the article was well written.'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[0],
    content: 'Really interesting read! It has been extremely helpful: thank you!!!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[1],
    content: 'Great read! I have now made an appointment with you as a mentor!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[1],
    content: 'A good summary of the challenge!!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[1],
    content: 'Really interesting read! It has been very helpful, thank you!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[2],
    content: 'Great read! I have now made an appointment with you as a mentor!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[3],
    content: 'Not sure I agree with your solutions, but the article was well written.'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[3],
    content: 'Great read! I have now made an appointment with you as a mentor!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[4],
    content: 'Really interesting read! It has been very helpful, thank you so much!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[3],
    content: 'Really interesting read! It has been very helpful, thank you!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[8],
    content: 'Not sure I agree with your solutions, but the article was well written.'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[7],
    content: 'Really interesting read! It has been extremely helpful: thank you!!!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[8],
    content: 'Great read! I have now made an appointment with you as a mentor!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[8],
    content: 'A good summary of the challenge!!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[9],
    content: 'Really interesting read! It has been very helpful, thank you!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[2],
    content: 'Great read! I have now made an appointment with you as a mentor!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[3],
    content: 'Not sure I agree with your solutions, but the article was well written.'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[3],
    content: 'Great read! I have now made an appointment with you as a mentor!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[4],
    content: 'Really interesting read! It has been very helpful, thank you so much!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[7],
    content: 'Really interesting read! It has been very helpful, thank you!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[10],
    content: 'Not sure I agree with your solutions, but the article was well written.'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[10],
    content: 'Really interesting read! It has been extremely helpful, thank you!!!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[8],
    content: 'Great read! I have now made an appointment with you as a mentor!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[5],
    content: 'A good summary of the challenge!!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[6],
    content: 'Really interesting read! It has been very helpful, thank you!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[7],
    content: 'Great read! I have now made an appointment with you as a mentor!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[8],
    content: 'Not sure I agree with your solutions, but the article was well written.'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[9],
    content: 'Great read! I have now made an appointment with you as a mentor!'
    )

  comment = Comment.create(
    user: User.all.sample,
    article: Article.all[10],
    content: 'Really interesting read! It has been very helpful, thank you so much!'
    )
puts ' Finished 30 comments'

puts 'Creating Chatroom'

chatroom = Chatroom.create(name: "Welcome")

puts 'Chatroom created!'
