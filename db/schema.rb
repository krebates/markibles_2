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

ActiveRecord::Schema.define(version: 20140119005306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: true do |t|
    t.integer  "user_id"
    t.string   "subject",    null: false
    t.text     "text",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
  end

  create_table "products", force: true do |t|
    t.string   "name",        null: false
    t.text     "description", null: false
    t.integer  "user_id"
    t.decimal  "price",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "ratings", force: true do |t|
    t.integer  "overall_rating",      null: false
    t.integer  "flavor",              null: false
    t.integer  "presentation",        null: false
    t.string   "additional_comments"
    t.integer  "user_id"
    t.integer  "product_id"
    t.integer  "seller_id"
    t.integer  "ratable_id"
    t.string   "ratable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["ratable_id", "ratable_type"], name: "index_ratings_on_ratable_id_and_ratable_type", using: :btree

  create_table "sellers", force: true do |t|
    t.string   "store_website"
    t.string   "name",          null: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
