# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding"
User.create([
    {
    "first_name": "Koni",
    "last_name": "Bobi",
    "email_address": "datazamp6@gmail.com",
    "phone_number": 0737466577,
    "username": "apo",
    "password": "boilerplate5554",
    "isAdmin": "false"
    },
    {
        "first_name": "Faka",
        "last_name": "Tobi",
        "email_address": "datagam@gmail.com",
        "phone_number": 0732466577,
        "username": "redo",
        "password": "boilerplate99944",
        "isAdmin": "true"
    }
])
# User.create!([
#     {first_name:"dan",last_name:"mike",email_address:"dan@mail.com",phone_number:1334512,username:"dan1 ",password:"dan123", isAdmin: true},
#     {first_name:"john",last_name:"doe",email_address:"john@mail.com",phone_number:1334512,username:"john1",password:"john123", isAdmin: false},
#     {first_name:"jane",last_name:"lucy",email_address:"jane@mail.com",phone_number:1234572,username:"jane1",password:"jane123", isAdmin: false}
#     ])
puts "done"