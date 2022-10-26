# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_26_041520) do
  create_table "bills", force: :cascade do |t|
    t.float "total_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "recipient_name"
    t.datetime "reception_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id", null: false
    t.integer "bill_id", null: false
    t.index ["bill_id"], name: "index_deliveries_on_bill_id"
    t.index ["order_id"], name: "index_deliveries_on_order_id"
  end

  create_table "location_assigneds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parcel_carrier_id", null: false
    t.integer "location_id", null: false
    t.index ["location_id"], name: "index_location_assigneds_on_location_id"
    t.index ["parcel_carrier_id"], name: "index_location_assigneds_on_parcel_carrier_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "street_address"
    t.string "latitude"
    t.string "longitude"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id", null: false
    t.integer "user_id", null: false
    t.index ["order_id"], name: "index_notifications_on_order_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "parcel_id", null: false
    t.index ["parcel_id"], name: "index_orders_on_parcel_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "parcel_carriers", force: :cascade do |t|
    t.integer "employee_code"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parcels", force: :cascade do |t|
    t.string "recipient_address"
    t.string "recipient_name"
    t.string "recipient_contact"
    t.integer "weight"
    t.string "from"
    t.string "destination"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_parcels_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "transaction_id"
    t.string "description"
    t.string "payment_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email_address"
    t.integer "phone_number"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "isAdmin", default: false
  end

  add_foreign_key "deliveries", "bills"
  add_foreign_key "deliveries", "orders"
  add_foreign_key "location_assigneds", "locations"
  add_foreign_key "location_assigneds", "parcel_carriers"
  add_foreign_key "locations", "users"
  add_foreign_key "notifications", "orders"
  add_foreign_key "notifications", "users"
  add_foreign_key "orders", "parcels"
  add_foreign_key "orders", "users"
  add_foreign_key "parcels", "users"
end
