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

ActiveRecord::Schema.define(version: 20151002182203) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "centres", force: :cascade do |t|
    t.string   "centre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crawls", force: :cascade do |t|
    t.integer  "centre_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "crawls", ["centre_id"], name: "index_crawls_on_centre_id", using: :btree

  create_table "highlights", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "store_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "highlights", ["store_id"], name: "index_highlights_on_store_id", using: :btree

  create_table "stores", force: :cascade do |t|
    t.string   "store_service_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_foreign_key "crawls", "centres"
  add_foreign_key "highlights", "stores"
end
