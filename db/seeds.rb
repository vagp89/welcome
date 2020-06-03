# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clean db'
Consultation.destroy_all
User.destroy_all
puts 'db is now clean'

user_one = User.create(username:'luis', email:"luis@example", first_name:"Luis", encrypted_password:"servicio")
user_two = User.create(username:'carlos', email:"car@example", first_name:"carlos", encrypted_password:"servicio89")

puts 'is created'


