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

ActiveRecord::Schema.define(version: 2021_08_03_053310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "facilities", force: :cascade do |t|
    t.string "name", null: false
    t.string "prefecture", null: false
    t.string "address", null: false
    t.string "homepage"
    t.string "business_hours"
    t.string "holiday"
    t.string "fee"
    t.string "payment"
    t.string "comment"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address"], name: "index_facilities_on_address"
    t.index ["name"], name: "index_facilities_on_name"
    t.index ["prefecture"], name: "index_facilities_on_prefecture"
  end

  create_table "rest_areas", force: :cascade do |t|
    t.integer "sex"
    t.integer "inside_bath_chair"
    t.integer "inside_deck_chair"
    t.integer "inside_relax_chair"
    t.integer "inside_bench"
    t.integer "inside_bench_non_backrest"
    t.integer "outside_bath_chair"
    t.integer "outside_deck_chair"
    t.integer "outside_relax_chair"
    t.integer "outside_bench"
    t.integer "outside_bench_non_backrest"
    t.string "comment"
    t.bigint "facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_rest_areas_on_facility_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "sex"
    t.integer "dry", default: 3, null: false
    t.integer "light", default: 3, null: false
    t.integer "wide", default: 3, null: false
    t.string "comment"
    t.bigint "user_id"
    t.bigint "facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_reviews_on_facility_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "saunas", force: :cascade do |t|
    t.integer "sex"
    t.integer "temperature"
    t.integer "intern"
    t.string "comment"
    t.bigint "facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_saunas_on_facility_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "water_baths", force: :cascade do |t|
    t.integer "sex"
    t.integer "temperature"
    t.integer "intern"
    t.string "comment"
    t.bigint "facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_water_baths_on_facility_id"
  end

  add_foreign_key "rest_areas", "facilities"
  add_foreign_key "reviews", "facilities"
  add_foreign_key "reviews", "users"
  add_foreign_key "saunas", "facilities"
  add_foreign_key "water_baths", "facilities"
end
