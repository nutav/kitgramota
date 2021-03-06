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

ActiveRecord::Schema.define(version: 20150205121439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "login",                              null: false
    t.string   "password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "encrypted_password",                 null: false
  end

  add_index "admins", ["login"], name: "index_admins_on_login", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "albums", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", force: true do |t|
    t.string   "name",                   null: false
    t.text     "text"
    t.integer  "status",     default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "name"
    t.integer  "status",     default: 1
    t.text     "text",                   null: false
    t.integer  "raty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_prices", force: true do |t|
    t.integer  "sum",                                null: false
    t.boolean  "saturday",           default: false
    t.boolean  "individual",         default: false
    t.integer  "education_level_id"
    t.integer  "education_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "education_level_claims", force: true do |t|
    t.string   "name",                           null: false
    t.string   "phone"
    t.string   "email"
    t.integer  "status",             default: 1
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "education_level_id"
  end

  add_index "education_level_claims", ["education_level_id"], name: "index_education_level_claims_on_education_level_id", using: :btree

  create_table "education_levels", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "education_types", force: true do |t|
    t.string   "name",       null: false
    t.integer  "hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.string   "name",                    null: false
    t.text     "description"
    t.integer  "status",      default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.string   "name",                 null: false
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "teachers", force: true do |t|
    t.string   "last_name",           null: false
    t.string   "first_name",          null: false
    t.string   "patronym"
    t.text     "extra"
    t.text     "education"
    t.text     "probation"
    t.text     "speciality"
    t.integer  "years"
    t.text     "about"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
