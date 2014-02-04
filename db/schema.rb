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

ActiveRecord::Schema.define(version: 20140204000826) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: true do |t|
    t.integer  "storyboard_id"
    t.string   "image_url"
    t.integer  "place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "boards", ["storyboard_id"], name: "index_boards_on_storyboard_id", using: :btree

  create_table "g_boards", force: true do |t|
    t.integer  "graphic_id"
    t.string   "image"
    t.integer  "place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "g_boards", ["graphic_id"], name: "index_g_boards_on_graphic_id", using: :btree

  create_table "graphics", force: true do |t|
    t.string   "image"
    t.string   "name"
    t.text     "description"
    t.integer  "place"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "vector",      default: false
  end

  create_table "s_boards", force: true do |t|
    t.integer  "styleboard_id"
    t.string   "image_url"
    t.integer  "place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "s_boards", ["styleboard_id"], name: "index_s_boards_on_styleboard_id", using: :btree

  create_table "storyboards", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "thumbnail_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "place"
  end

  create_table "styleboards", force: true do |t|
    t.text     "description"
    t.string   "image"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "place"
  end

  create_table "vectors", force: true do |t|
    t.integer  "graphic_id"
    t.string   "image"
    t.integer  "place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vectors", ["graphic_id"], name: "index_vectors_on_graphic_id", using: :btree

  create_table "works", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.text     "description"
    t.string   "video"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "place"
  end

end
