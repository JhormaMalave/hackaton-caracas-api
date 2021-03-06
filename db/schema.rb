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

ActiveRecord::Schema.define(version: 2022_02_03_010445) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctor_has_medical_specialities", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "medical_speciality_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_doctor_has_medical_specialities_on_doctor_id"
    t.index ["medical_speciality_id"], name: "index_doctor_has_medical_specialities_on_medical_speciality_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "contact_number"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medical_center_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medical_centers", force: :cascade do |t|
    t.string "name"
    t.string "direction"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "medical_center_type_id", default: 1, null: false
    t.index ["medical_center_type_id"], name: "index_medical_centers_on_medical_center_type_id"
  end

  create_table "medical_item_has_types", force: :cascade do |t|
    t.bigint "medical_item_id", null: false
    t.bigint "medical_item_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["medical_item_id"], name: "index_medical_item_has_types_on_medical_item_id"
    t.index ["medical_item_type_id"], name: "index_medical_item_has_types_on_medical_item_type_id"
  end

  create_table "medical_item_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medical_items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "status"
    t.string "direction"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medical_specialities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "doctor_has_medical_specialities", "doctors"
  add_foreign_key "doctor_has_medical_specialities", "medical_specialities"
  add_foreign_key "medical_centers", "medical_center_types"
  add_foreign_key "medical_item_has_types", "medical_item_types"
  add_foreign_key "medical_item_has_types", "medical_items"
end
