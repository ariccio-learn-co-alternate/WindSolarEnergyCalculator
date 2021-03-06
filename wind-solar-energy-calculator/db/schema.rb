# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_10_192754) do

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.string "latitude"
    t.string "longitude"
    t.integer "solar_id"
    t.integer "wind_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "city"
    t.string "state"
    t.integer "user_id"
  end

  create_table "solars", force: :cascade do |t|
    t.float "ac_annual"
    t.float "solrad_annual"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "capacity"
    t.float "tilt"
    t.index ["location_id"], name: "index_solars_on_location_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.integer "location_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.index ["location_id"], name: "index_users_on_location_id"
  end

  create_table "wind_values", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.float "speed"
  end

  create_table "winds", force: :cascade do |t|
    t.float "speed"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "city"
    t.string "state"
    t.index ["location_id"], name: "index_winds_on_location_id"
  end

  add_foreign_key "solars", "locations"
  add_foreign_key "winds", "locations"
end
