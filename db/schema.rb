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

ActiveRecord::Schema[7.1].define(version: 2023_12_19_190823) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accomodations", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.float "price"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accomodations_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "status"
    t.bigint "user_id", null: false
    t.bigint "accomodation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accomodation_id"], name: "index_bookings_on_accomodation_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "comment"
    t.bigint "user_id", null: false
    t.bigint "accomodation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accomodation_id"], name: "index_reviews_on_accomodation_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accomodations", "users"
  add_foreign_key "bookings", "accomodations"
  add_foreign_key "bookings", "users"
  add_foreign_key "reviews", "accomodations"
  add_foreign_key "reviews", "users"
end
