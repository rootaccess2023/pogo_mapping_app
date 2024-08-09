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

ActiveRecord::Schema[7.0].define(version: 2024_08_09_121003) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.float "longitude"
    t.float "latitude"
    t.string "address"
    t.boolean "is_2017"
    t.boolean "is_2018"
    t.boolean "is_2019"
    t.boolean "is_2020"
    t.boolean "is_2021"
    t.boolean "is_2022"
    t.boolean "is_2023"
    t.boolean "is_2024"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.float "longitude"
    t.float "latitude"
    t.string "address"
    t.boolean "is_2017"
    t.boolean "is_2018"
    t.boolean "is_2019"
    t.boolean "is_2020"
    t.boolean "is_2021"
    t.boolean "is_2022"
    t.boolean "is_2023"
    t.boolean "is_2024"
    t.text "description"
    t.text "img_url"
    t.string "pogo_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string "name"
    t.string "pogo_hub_name"
    t.string "address"
    t.string "nearby_landmarks"
    t.text "activities"
    t.text "individuals"
    t.text "vehicles"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "reports", "users"
end
