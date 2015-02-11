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

ActiveRecord::Schema.define(version: 20150211032710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name"
    t.string   "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pols", force: :cascade do |t|
    t.string   "party"
    t.string   "name"
    t.integer  "district_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pols", ["district_id"], name: "index_pols_on_district_id", using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "bill_id"
    t.integer  "pol_id"
    t.string   "how_vote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "votes", ["bill_id"], name: "index_votes_on_bill_id", using: :btree
  add_index "votes", ["pol_id"], name: "index_votes_on_pol_id", using: :btree

  add_foreign_key "pols", "districts"
  add_foreign_key "votes", "bills"
  add_foreign_key "votes", "pols"
end
