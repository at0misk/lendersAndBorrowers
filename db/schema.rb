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

ActiveRecord::Schema.define(version: 20160520183807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "joins", force: true do |t|
    t.integer  "borrower_id"
    t.integer  "lender_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "ammount"
  end

  add_index "joins", ["borrower_id"], name: "index_joins_on_borrower_id", using: :btree
  add_index "joins", ["lender_id"], name: "index_joins_on_lender_id", using: :btree

  create_table "lenders", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lenders", ["user_id"], name: "index_lenders_on_user_id", using: :btree

  create_table "lents", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lents", ["user_id"], name: "index_lents_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.float    "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "account_type"
    t.float    "request"
    t.string   "reason"
    t.string   "description"
  end

end
