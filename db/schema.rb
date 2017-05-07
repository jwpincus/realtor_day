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

ActiveRecord::Schema.define(version: 20170507225202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.text     "name"
    t.text     "secondary_name"
    t.string   "phone"
    t.text     "email"
    t.integer  "realtor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["realtor_id"], name: "index_customers_on_realtor_id", using: :btree
  end

  create_table "properties", force: :cascade do |t|
    t.string   "street_address"
    t.string   "city"
    t.string   "zip_code"
    t.string   "state"
    t.integer  "realtor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["realtor_id"], name: "index_properties_on_realtor_id", using: :btree
  end

  create_table "realtors", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "agency_id"
    t.index ["agency_id"], name: "index_realtors_on_agency_id", using: :btree
  end

  add_foreign_key "customers", "realtors"
  add_foreign_key "properties", "realtors"
  add_foreign_key "realtors", "agencies"
end
