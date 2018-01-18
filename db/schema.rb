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

ActiveRecord::Schema.define(version: 20180110134444) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 50,    null: false
    t.string   "short_name",  limit: 255,   null: false
    t.text     "description", limit: 65535, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "post_id",    limit: 4
    t.string   "author",     limit: 25,                    null: false
    t.string   "email",      limit: 50,                    null: false
    t.text     "content",    limit: 65535,                 null: false
    t.boolean  "status",                   default: false
    t.string   "moderator",  limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "name",           limit: 255,   null: false
    t.string   "phone",          limit: 255,   null: false
    t.string   "email",          limit: 255,   null: false
    t.string   "cargo_type",     limit: 255,   null: false
    t.string   "container_type", limit: 255,   null: false
    t.integer  "cargo_weight",   limit: 4,     null: false
    t.text     "cargo_details",  limit: 65535, null: false
    t.text     "instruction",    limit: 65535
    t.string   "importer",       limit: 255,   null: false
    t.string   "importer_mail",  limit: 255,   null: false
    t.string   "importer_phone", limit: 255,   null: false
    t.string   "origin",         limit: 255,   null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "post_id",    limit: 4
    t.string   "author",     limit: 25,                    null: false
    t.string   "email",      limit: 50,                    null: false
    t.text     "content",    limit: 65535,                 null: false
    t.boolean  "status",                   default: false
    t.string   "moderator",  limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "replies", force: :cascade do |t|
    t.integer  "comment_id", limit: 4
    t.string   "author",     limit: 25,                    null: false
    t.string   "email",      limit: 50,                    null: false
    t.text     "content",    limit: 65535,                 null: false
    t.boolean  "status",                   default: false
    t.string   "moderator",  limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 25,              null: false
    t.string   "password_digest", limit: 255,             null: false
    t.string   "first_name",      limit: 255,             null: false
    t.string   "last_name",       limit: 255,             null: false
    t.string   "email",           limit: 255,             null: false
    t.string   "display_name",    limit: 25,              null: false
    t.integer  "user_level",      limit: 4,   default: 1
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

end
