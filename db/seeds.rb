# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding users...❄"
User.create!([
    {first_name:"dan",last_name:"mike",email_address:"dan@mail.com",phone_number:"1234512",username:"dan
    ",password:"dan123"},
    {first_name:"john",last_name:"doe",email_address:"john@mail.com",phone_number:"1234512",username:"john
        ",password:"john123"},
    {first_name:"jane",last_name:"lucy",email_address:"jane@mail.com",phone_number:"1234512",username:"jane
        ",password:"jane123"}

    ])


    puts "done seeding...✅✅"