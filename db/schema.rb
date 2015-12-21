# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151221163300) do

  create_table "retailers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "business_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "tax_id"
    t.string   "phone_number"
    t.string   "cell_phone_number"
    t.string   "no_of_gas_stations"
    t.string   "years_in_business"
    t.string   "account_number"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "retailers", ["account_number"], name: "index_retailers_on_account_number"
  add_index "retailers", ["tax_id"], name: "index_retailers_on_tax_id"

  create_table "stations", force: :cascade do |t|
    t.string   "brand"
    t.string   "business_name"
    t.string   "contact_person"
    t.string   "phone_number"
    t.string   "cell_number"
    t.string   "email"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "station_number"
    t.string   "facility_id"
    t.string   "tax_id"
    t.string   "extras"
    t.integer  "retailer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "stations", ["brand"], name: "index_stations_on_brand"
  add_index "stations", ["facility_id"], name: "index_stations_on_facility_id"
  add_index "stations", ["retailer_id"], name: "index_stations_on_retailer_id"
  add_index "stations", ["tax_id"], name: "index_stations_on_tax_id"

  create_table "tanks", force: :cascade do |t|
    t.string   "eighty_seven"
    t.string   "eighty_eight"
    t.string   "eighty_nine"
    t.string   "ninety"
    t.string   "ninety_one"
    t.string   "ninety_three"
    t.string   "diesel"
    t.string   "bio_diesel"
    t.string   "kerosene"
    t.string   "tank_registration_number"
    t.integer  "station_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "tanks", ["station_id"], name: "index_tanks_on_station_id"
  add_index "tanks", ["tank_registration_number"], name: "index_tanks_on_tank_registration_number"

end
