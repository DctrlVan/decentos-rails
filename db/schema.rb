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

ActiveRecord::Schema.define(version: 20160525202514) do

  create_table "bitcoin_addrs", force: :cascade do |t|
    t.string   "address"
    t.integer  "invoice_id"
    t.boolean  "is_used"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "btcinvoices", force: :cascade do |t|
    t.decimal  "rate",       precision: 9,  scale: 5
    t.datetime "time_sent"
    t.boolean  "is_paid"
    t.decimal  "fiat_amt",   precision: 10, scale: 2
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "user_id"
    t.integer  "issuer_id"
  end

  add_index "btcinvoices", ["issuer_id"], name: "index_btcinvoices_on_issuer_id"
  add_index "btcinvoices", ["user_id"], name: "index_btcinvoices_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.date     "birthdate"
    t.boolean  "active"
    t.string   "password_digest"
    t.boolean  "is_admin"
    t.datetime "last_sign_in"
    t.datetime "current_session_start"
    t.integer  "invited_by"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "invoicepref"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
