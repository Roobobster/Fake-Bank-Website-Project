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

ActiveRecord::Schema.define(version: 20201123151610) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account", force: :cascade do |t|
    t.string "profile_id"
    t.string "type"
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profile", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "address"
    t.string "telephone"
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "address"
    t.string "telephone"
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transaction", force: :cascade do |t|
    t.string "account_id"
    t.datetime "transaction_datetime"
    t.float "amount"
    t.text "message"
    t.string "recipient"
    t.string "payee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
