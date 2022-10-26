# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

 puts "seeding users...❄"
  User.create!([
    {first_name:"dan",last_name:"mike",email_address:"dan@mail.com",phone_number:"1234512",username:"dan1 ",password:"dan123"},
    {first_name:"john",last_name:"doe",email_address:"john@mail.com",phone_number:"1232512",username:"john1",password:"john123"},
    {first_name:"jane",last_name:"lucy",email_address:"jane@mail.com",phone_number:"1236512",username:"jane1",password:"jane123"}
    ])


    puts "seeding locations..."
    Location.create([
        {street_address:"kimathi", latitude: '0', longitude:'0' ,city: "Nairobi",user_id:"1"},
        {street_address:"kenyatta", latitude: '1', longitude:'1' ,city: "Nakuru",user_id:"2"},
        {street_address:"uganda way", latitude: '2', longitude:'2' ,city: "Eldoret",user_id:"3"}

    ])

    puts "seeding assigned locations...."

    LocationAssigned.create([
        {parcel_carrier_id:"1",location_id:"1"},
        {parcel_carrier_id:"2",location_id:"2"},
        {parcel_carrier_id:"3",location_id:"3"}

    ])


    puts "seeding carriers..."
    ParcelCarrier.create([
        {employee_code:"123",first_name:"byron",last_name:"chris"},
        {employee_code:"122",first_name:"neville",last_name:"garry"},
        {employee_code:"121",first_name:"Brian",last_name:"James"}
        
    ])

    puts "seeding parcels..."
    Parcel.create([
        {recipient_address:"141 Nakuru",recipient_name:"John",recipient_contact:"012345",weight:"2",from:"nairobi",destination:"nakuru",user_id:"5"},
        {recipient_address:"142 Eldoret",recipient_name:"Jace",recipient_contact:"012346",weight:"3",from:"nairobi",destination:"eldoret",user_id:"6"},
        {recipient_address:"145 Kisumu",recipient_name:"Ben",recipient_contact:"012344",weight:"4",from:"nairobi",destination:"kisumu",user_id:"7"}
    ])

    puts "seeding orders..."
    Order.create([
        {order_status: "delivered",user_id: "5",parcel_id: "1"},
        {order_status: "in-transit",user_id: "6",parcel_id: "2"},
        {order_status: "processed",user_id: "7",parcel_id: "3"}
    ])

     puts "seeding bills..."

    Bill.create([
        {total_cost:"2000"},
        {total_cost:"2500"},
        {total_cost:"2200"}
    ])

    puts "seeding notifications..."

    Notification.create([
        {message:"parcel delivered and ready for pick-up",order_id:"1",user_id:"5"},
        {message:"parcel processed awaiting transportation",order_id:"2",user_id:"6"},
        {message:"parcel on transit on the way to delivery",order_id:"3",user_id:"7"},
    ])

    puts "seeding payments..."

    Payment.create([
        {transaction_id:"1231231",description:"for shipment from nairobi to nakuru",payment_status:"paid"},
        {transaction_id:"123531",description:"for shipment from nairobi to eldoret",payment_status:"pending"},
        {transaction_id:"127231",description:"for shipment from nairobi to kisumu",payment_status:"processed"}
    ])

    puts "seeding deliveries..."

    Delivery.create([
        {recipient_name: "kim", reception_time: "12", order_id:"1", bill_id:"1"},
        {recipient_name: "kibe", reception_time: "13", order_id:"2", bill_id:"2"},
        {recipient_name: "mike", reception_time: "14", order_id:"3", bill_id:"3"}
    ])

    puts "done seeding...✅✅"