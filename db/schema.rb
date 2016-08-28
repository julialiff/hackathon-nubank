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

ActiveRecord::Schema.define(version: 20160828020858) do

  create_table "ads", force: :cascade do |t|
    t.string   "type"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_ads_on_user_id"
  end

  create_table "cmessages", force: :cascade do |t|
    t.string   "message"
    t.integer  "user_id"
    t.integer  "consultant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["consultant_id"], name: "index_cmessages_on_consultant_id"
    t.index ["user_id"], name: "index_cmessages_on_user_id"
  end

  create_table "consultants", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "photo"
    t.string   "state"
    t.string   "city"
    t.string   "occupation"
    t.string   "username"
    t.string   "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "knowledge"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "message"
    t.integer  "user_id"
    t.integer  "consultant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["consultant_id"], name: "index_messages_on_consultant_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "photo"
    t.string   "state"
    t.string   "city"
    t.string   "occupation"
    t.string   "username"
    t.string   "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
