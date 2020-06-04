# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 20.times {
#     User.create(
#     fname: Faker::Name.first_name,
#     lname: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     age: rand(50),
#     password: "password"
#     )
# }

# 20.times {
#     Project.create(
#     name: Faker::App.name
#     )
# }

# 20.times {
#     Team.create(
#     name: Faker::Company.name
#     )
# }

Circumstance.create(name: "Home")
Circumstance.create(name: "Office")
Circumstance.create(name: "Phone")
Circumstance.create(name: "Email")
Circumstance.create(name: "LOW ENERGY")
Circumstance.create(name: "MID ENERGY")
Circumstance.create(name: "HIGH ENERGY")
Circumstance.create(name: "Urgent")
Circumstance.create(name: "5 Min")
Circumstance.create(name: "15 Min")
Circumstance.create(name: "30 Min")
Circumstance.create(name: "60 Min")
