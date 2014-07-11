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

ActiveRecord::Schema.define(version: 20140709221237) do

  create_table "houses", force: true do |t|
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price"
    t.string   "state"
    t.string   "county"
    t.integer  "beds"
    t.float    "baths"
    t.string   "square_footage"
    t.string   "lot_size"
    t.string   "heating_type"
    t.string   "air_conditioning"
    t.string   "garage"
    t.string   "flooring"
    t.integer  "year_built"
    t.string   "basement"
    t.string   "attic"
    t.string   "parking"
    t.integer  "fireplaces"
    t.string   "appliances"
    t.string   "house_type"
    t.string   "description"
    t.integer  "zip"
    t.string   "city"
    t.integer  "floors"
    t.integer  "user_id"
    t.string   "picture"
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
