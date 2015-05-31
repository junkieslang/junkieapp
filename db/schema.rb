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

ActiveRecord::Schema.define(version: 20150531202830) do

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musical_album_formats", force: :cascade do |t|
    t.integer  "musical_album_id"
    t.integer  "sound_format_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "musical_album_tracks", force: :cascade do |t|
    t.integer "musical_album_id"
    t.integer "position"
    t.string  "track_name"
  end

  create_table "musical_albums", force: :cascade do |t|
    t.string   "catalog_number"
    t.integer  "artist_id"
    t.string   "title"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "musical_album_id"
    t.float   "total"
  end

  add_index "orders", ["musical_album_id"], name: "index_orders_on_musical_album_id"

  create_table "sound_formats", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
