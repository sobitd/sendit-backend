# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

kamau = User.create(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email_address: Faker::Internet.email,
                    phone_number: Faker::PhoneNumber.phone_number,
                    username: Faker::Internet.username,
                    password: Faker::Internet.password)

kimani = User.create(first_name: Faker::Name.first_name,
                     last_name: Faker::Name.last_name,
                     email_address: Faker::Internet.email,
                     phone_number: Faker::PhoneNumber.phone_number,
                     username: Faker::Internet.username,
                     password: Faker::Internet.password)

kiptoo = User.create(first_name: Faker::Name.first_name,
                     last_name: Faker::Name.last_name,
                     email_address: Faker::Internet.email,
                     phone_number: Faker::PhoneNumber.phone_number,
                     username: Faker::Internet.username,
                     password: Faker::Internet.password)

kimtai =  User.create(first_name: Faker::Name.first_name,
                      last_name: Faker::Name.last_name,
                      email_address: Faker::Internet.email,
                      phone_number: Faker::PhoneNumber.phone_number,
                      username: Faker::Internet.username,
                      password: Faker::Internet.password)

kiprop =  User.create(first_name: Faker::Name.first_name,
                      last_name: Faker::Name.last_name,
                      email_address: Faker::Internet.email,
                      phone_number: Faker::PhoneNumber.phone_number,
                      username: Faker::Internet.username,
                      password: Faker::Internet.password)

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
