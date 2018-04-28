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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20180425092402) do
=======
ActiveRecord::Schema.define(version: 20180423111116) do

  create_table "amenities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "necessity"
    t.string   "wifi"
    t.string   "shampoo"
    t.string   "closet"
    t.string   "tv"
    t.string   "air_con"
    t.string   "breakfast"
    t.string   "desk"
    t.string   "heater"
    t.string   "steam_iron"
    t.string   "hair_dryer"
    t.string   "pet"
    t.string   "entrance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
>>>>>>> master

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
  end

  create_table "category_house_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "category_id"
    t.integer "house_type_id"
    t.index ["category_id"], name: "index_category_house_types_on_category_id", using: :btree
    t.index ["house_type_id"], name: "index_category_house_types_on_house_type_id", using: :btree
  end

  create_table "host_amenities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "host_id",    null: false
    t.integer  "amenity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amenity_id"], name: "index_host_amenities_on_amenity_id", using: :btree
    t.index ["host_id"], name: "index_host_amenities_on_host_id", using: :btree
  end

  create_table "host_safety_amenities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "host_id",           null: false
    t.integer  "safety_amenity_id", null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["host_id"], name: "index_host_safety_amenities_on_host_id", using: :btree
    t.index ["safety_amenity_id"], name: "index_host_safety_amenities_on_safety_amenity_id", using: :btree
  end

  create_table "hosts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "category"
    t.string   "house_type"
    t.integer  "room_type"
    t.integer  "size_of_building"
    t.integer  "is_this_room_using_guest_only"
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
    t.string   "house_description"
    t.string   "house_name"
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
    t.integer  "user_id"
    t.integer  "currency"
    t.integer  "have_you_experienced_lending_a_room"
    t.integer  "how_often_do_you_want_to_stay"
    t.index ["user_id"], name: "index_hosts_on_user_id", using: :btree
  end

  create_table "house_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "type",                            null: false
    t.text   "house_discription", limit: 65535
  end

  create_table "room_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "content"
    t.integer "status"
    t.integer "user_id"
    t.index ["user_id"], name: "index_room_images_on_user_id", using: :btree
  end

  create_table "safety_amenities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "smoke_sensor"
    t.string   "hochiki"
    t.string   "first_aid_kit"
    t.string   "emergency_info"
    t.string   "fire_extinguisher"
    t.string   "private_room"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
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
    t.string   "school"
    t.string   "workplace"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "category_house_types", "categories"
  add_foreign_key "category_house_types", "house_types"
  add_foreign_key "host_amenities", "amenities"
  add_foreign_key "host_amenities", "hosts"
  add_foreign_key "host_safety_amenities", "hosts"
  add_foreign_key "host_safety_amenities", "safety_amenities"
  add_foreign_key "hosts", "users"
  add_foreign_key "room_images", "users"
end
