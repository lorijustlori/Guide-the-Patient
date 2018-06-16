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

ActiveRecord::Schema.define(version: 2018_06_16_172733) do

  create_table "actions", force: :cascade do |t|
    t.string "activity"
    t.integer "number"
    t.string "unit"
    t.string "timeline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "remedy_id"
    t.index ["remedy_id"], name: "index_actions_on_remedy_id"
  end

  create_table "ailments", force: :cascade do |t|
    t.string "code", null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_ailments_on_code", unique: true
    t.index ["description"], name: "index_ailments_on_description", unique: true
  end

  create_table "diagnoses", force: :cascade do |t|
    t.integer "remedy_id"
    t.integer "ailment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ailment_id"], name: "index_diagnoses_on_ailment_id"
    t.index ["remedy_id"], name: "index_diagnoses_on_remedy_id"
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "phone", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "medical_record_number", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "phone", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_patients_on_email", unique: true
    t.index ["medical_record_number"], name: "index_patients_on_medical_record_number", unique: true
  end

  create_table "physicians", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hospital_id"
    t.index ["hospital_id"], name: "index_physicians_on_hospital_id"
  end

  create_table "procedures", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "diagnosis_id"
    t.integer "physician_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.index ["diagnosis_id"], name: "index_procedures_on_diagnosis_id"
    t.index ["patient_id"], name: "index_procedures_on_patient_id"
    t.index ["physician_id"], name: "index_procedures_on_physician_id"
  end

  create_table "remedies", force: :cascade do |t|
    t.string "code", null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_remedies_on_code", unique: true
    t.index ["description"], name: "index_remedies_on_description", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
