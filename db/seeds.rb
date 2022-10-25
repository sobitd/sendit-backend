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
    "password_digest": "boilerplate5554",
    },
    {
        "first_name": "Faka",
        "last_name": "Tobi",
        "email_address": "datagam@gmail.com",
        "phone_number": 0732466577,
        "username": "redo",
        "password_digest": "boilerplate99944"
    }
])
puts "done"