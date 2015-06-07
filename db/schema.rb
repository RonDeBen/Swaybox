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

ActiveRecord::Schema.define(version: 20150605044703) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arrangements", force: :cascade do |t|
    t.datetime "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "difficulties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "layers", force: :cascade do |t|
    t.string   "title"
    t.integer  "seconds"
    t.integer  "takes"
    t.string   "transition"
    t.string   "cam"
    t.integer  "difficulty"
    t.string   "play_option"
    t.integer  "wardrobe"
    t.string   "tracking"
    t.string   "pcolor"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "layers_mc_puppets", force: :cascade do |t|
    t.integer "layer_id"
    t.integer "mc_puppet_id"
  end

  create_table "layers_props", force: :cascade do |t|
    t.integer "layer_id"
    t.integer "prop_id"
  end

  create_table "layers_wide_puppets", force: :cascade do |t|
    t.integer "layer_id"
    t.integer "wide_puppet_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mc_puppets", force: :cascade do |t|
    t.string   "name"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mc_statuses", force: :cascade do |t|
    t.string   "stage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "ShotBreakdowns"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "props", force: :cascade do |t|
    t.string   "name"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reg_statuses", force: :cascade do |t|
    t.string   "stage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shot_breakdowns", force: :cascade do |t|
    t.string   "title"
    t.integer  "set"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "wardrobes", force: :cascade do |t|
    t.string   "name"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wide_puppets", force: :cascade do |t|
    t.string   "name"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wide_statuses", force: :cascade do |t|
    t.string   "stage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
