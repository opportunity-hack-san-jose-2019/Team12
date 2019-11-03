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

ActiveRecord::Schema.define(version: 2019_11_03_155726) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.string "location"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interests_interviews", id: false, force: :cascade do |t|
    t.integer "interest_id", null: false
    t.integer "interview_id", null: false
    t.index ["interest_id", "interview_id"], name: "index_interests_interviews_on_interest_id_and_interview_id"
    t.index ["interview_id", "interest_id"], name: "index_interests_interviews_on_interview_id_and_interest_id"
  end

  create_table "interests_students", id: false, force: :cascade do |t|
    t.integer "interest_id", null: false
    t.integer "student_id", null: false
  end

  create_table "interviewers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.boolean "vip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interviews", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "interviewer_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "checked_in_interviewer"
    t.boolean "checked_in_student"
    t.index ["event_id"], name: "index_interviews_on_event_id"
    t.index ["interviewer_id"], name: "index_interviews_on_interviewer_id"
    t.index ["student_id"], name: "index_interviews_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.float "attendance_score"
    t.float "module_score"
    t.float "project_score"
    t.float "total_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "interviews", "events"
  add_foreign_key "interviews", "interviewers"
  add_foreign_key "interviews", "students"
end
