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

ActiveRecord::Schema.define(version: 20140509081047) do

  create_table "admin_users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name",  limit: 40
    t.string   "email",                 default: " ", null: false
    t.string   "username",   limit: 40
    t.string   "password",   limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users_pages", id: false, force: true do |t|
    t.integer "admin_user_id"
    t.integer "page_id"
  end

  add_index "admin_users_pages", ["admin_user_id", "page_id"], name: "index_admin_users_pages_on_admin_user_id_and_page_id", using: :btree

  create_table "customers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "login_pages", force: true do |t|
    t.string   "user_id",     limit: 25
    t.string   "password",    limit: 25
    t.string   "name",        limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender",      limit: 20
    t.string   "email",       limit: 20
    t.string   "mobile",      limit: 10
    t.string   "city",        limit: 50
    t.string   "country",     limit: 50
    t.string   "remember_me", limit: 10
    t.string   "Age",         limit: 10
  end

  create_table "orders", force: true do |t|
    t.integer  "customers_id"
    t.datetime "order_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.integer  "subject_id"
    t.string   "name"
    t.string   "permalink"
    t.integer  "position"
    t.boolean  "visible",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["permalink"], name: "index_pages_on_permalink", using: :btree
  add_index "pages", ["subject_id"], name: "index_pages_on_subject_id", using: :btree

  create_table "sections", force: true do |t|
    t.integer  "page_id"
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",      default: false
    t.string   "content_type"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["page_id"], name: "index_sections_on_page_id", using: :btree

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name",  limit: 40
    t.string   "email",                 default: " ", null: false
    t.string   "username",   limit: 40
    t.string   "password",   limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
