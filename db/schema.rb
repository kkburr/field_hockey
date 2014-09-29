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

ActiveRecord::Schema.define(version: 20140928192817) do

  create_table "admins", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "coaches", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "coaches", ["email"], name: "index_coaches_on_email", unique: true
  add_index "coaches", ["reset_password_token"], name: "index_coaches_on_reset_password_token", unique: true

  create_table "families", force: true do |t|
    t.string   "email_two"
    t.string   "region"
    t.string   "high_school"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "parent_one_first_name"
    t.string   "parent_one_last_name"
    t.string   "parent_two_first_name"
    t.string   "parent_two_last_name"
    t.integer  "phone"
    t.integer  "coach"
  end

  add_index "families", ["email"], name: "index_families_on_email", unique: true
  add_index "families", ["reset_password_token"], name: "index_families_on_reset_password_token", unique: true

  create_table "players", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "current_school"
    t.integer  "current_grade"
    t.datetime "birthdate"
    t.integer  "played_before"
    t.string   "other_sport"
    t.string   "allergies"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "usafh_number"
  end

  create_table "programs", force: true do |t|
    t.integer  "grades"
    t.string   "description_short"
    t.string   "description_long"
    t.string   "location"
    t.string   "head_coach"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: true do |t|
    t.string   "name"
    t.string   "region"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
