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

ActiveRecord::Schema.define(version: 20150625092456) do

  create_table "servers", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "url",           limit: 255
    t.string   "ip_address",    limit: 255
    t.string   "username",      limit: 255
    t.string   "password",      limit: 255
    t.string   "database_type", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "websites", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "server_id",         limit: 4
    t.string   "ssh_username",      limit: 255
    t.string   "ssh_password",      limit: 255
    t.string   "local_url_one",     limit: 255
    t.string   "local_url_two",     limit: 255
    t.string   "live_url",          limit: 255
    t.string   "secret_key",        limit: 255
    t.string   "database_password", limit: 255
    t.string   "ruby_version",      limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "websites", ["server_id"], name: "index_websites_on_server_id", using: :btree

  add_foreign_key "websites", "servers"
end
