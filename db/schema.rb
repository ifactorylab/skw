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

ActiveRecord::Schema.define(version: 20141024220715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"
  enable_extension "hstore"

  create_table "item_regions", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "country"
    t.string   "region"
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_sizes", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_vintages", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "item_type_id"
    t.string   "item_region_id"
    t.string   "item_size_id"
    t.integer  "item_count",     default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "repo_id",                     null: false
    t.string   "vintage_id",     default: "", null: false
    t.string   "name",           default: "", null: false
  end

  create_table "repos", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "user_id",                 null: false
    t.string   "name",       default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",               default: "", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
