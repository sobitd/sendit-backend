# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Seeding'
User.create([
              {
                "first_name": 'Koni',
                "last_name": 'Bobi',
                "email_address": 'datazamp6@gmail.com',
                "phone_number": 0737423431,
                "username": 'apo',
                "password": 'boilerplate5554',
                "isAdmin": 'false'
              },
              {
                "first_name": 'Faka',
                "last_name": 'Tobi',
                "email_address": 'datagam@gmail.com',
                "phone_number": 0732466577,
                "username": 'redo',
                "password": 'boilerplate99944',
                "isAdmin": 'true'
              },
              {
                "first_name": 'Drey ',
                "last_name": 'Mwangi',
                "email_address": 'mandem@gmail.com',
                "phone_number": 0732466575,
                "username": 'preme',
                "password": 'boilerplate9933',
                "isAdmin": 'false'
              },
              {
                "first_name": 'Brian',
                "last_name": 'Kimtai',
                "email_address": 'prpm@gmail.com',
                "phone_number": 0721466577,
                "username": 'prrred',
                "password": 'boilerplatet644',
                "isAdmin": 'false'
              },
              {
                "first_name": 'Grace',
                "last_name": 'Mish',
                "email_address": 'deezer@gmail.com',
                "phone_number": 0712456577,
                "username": 'skrrr',
                "password": 'boilerplate45944',
                "isAdmin": 'false'
              }

            ])

parcel_one = Parcel.create(recipient_address: Faker::Address.street_address,
                           recipient_name: Faker::Name.name,
                           recipient_contact: Faker::PhoneNumber.phone_number,
                           weight: Faker::Number.number,
                           from: Faker::Measurement.length,
                           destination: Faker::Measurement.length,
                           user_id: 1)

parcel_two = Parcel.create(recipient_address: Faker::Address.street_address,
                           recipient_name: Faker::Name.name,
                           recipient_contact: Faker::PhoneNumber.phone_number,
                           weight: Faker::Number.number,
                           from: Faker::Measurement.length,
                           destination: Faker::Measurement.length,
                           user_id: 2)

parcel_three = Parcel.create(recipient_address: Faker::Address.street_address,
                             recipient_name: Faker::Name.name,
                             recipient_contact: Faker::PhoneNumber.phone_number,
                             weight: Faker::Number.number,
                             from: Faker::Measurement.length,
                             destination: Faker::Measurement.length,
                             user_id: 3)

parcel_four = Parcel.create(recipient_address: Faker::Address.street_address,
                            recipient_name: Faker::Name.name,
                            recipient_contact: Faker::PhoneNumber.phone_number,
                            weight: Faker::Number.number,
                            from: Faker::Measurement.length,
                            destination: Faker::Measurement.length,
                            user_id: 4)

parcel_five = Parcel.create(recipient_address: Faker::Address.street_address,
                            recipient_name: Faker::Name.name,
                            recipient_contact: Faker::PhoneNumber.phone_number,
                            weight: Faker::Number.number,
                            from: Faker::Measurement.length,
                            destination: Faker::Measurement.length,
                            user_id: 5)

puts 'done'
