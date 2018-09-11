# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Hong", email: "tranhong08@gmail.com", password: "123456",
password_confirmation: "123456", admin: true)


30.times do |n|
  name  = Faker::Name.name
  email = "test-#{n+1}@gmailtest.org"
  password = "123456"
  User.create!(name: name, email: email, password: "123456", password_confirmation: "123456")
end
