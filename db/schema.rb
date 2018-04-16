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

ActiveRecord::Schema.define(version: 20180415033132) do

  create_table "hosts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "category"
    t.string   "house_type"
    t.string   "room_type"
    t.string   "is_this_room_using_guest_only"
    t.integer  "capacity"
    t.integer  "num_bedroom"
    t.integer  "num_bed"
    t.string   "country"
    t.string   "postal_code"
    t.string   "state"
    t.string   "city"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.float    "num_of_bath",                         limit: 24
    t.string   "house_discription"
    t.string   "house_name"
    t.string   "have_you_experienced_lending_a_room"
    t.string   "how_often_do_you_want_to_stay"
    t.integer  "reservation_limit"
    t.integer  "reception_limit"
    t.integer  "from_night"
    t.integer  "to_night"
    t.integer  "charge_setting_type"
    t.integer  "min_charge"
    t.integer  "max_charge"
    t.integer  "basic_charge"
    t.string   "first_time_20percent_discount"
    t.integer  "discount_rate"
    t.integer  "weekly_discount_rate"
    t.integer  "monthly_discount_rate"
    t.string   "profile_image"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.date     "birth_day",                           null: false
    t.integer  "sex"
    t.string   "phone_number"
    t.integer  "language"
    t.integer  "currency"
    t.string   "identification"
    t.string   "address"
    t.string   "profile"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
