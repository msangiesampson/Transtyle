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

ActiveRecord::Schema.define(version: 20150328170116) do

  create_table "colours", force: :cascade do |t|
    t.string   "colour"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "garments", force: :cascade do |t|
    t.string   "name"
    t.string   "part"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "occasions", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "outfits", force: :cascade do |t|
    t.integer  "shape_id"
    t.integer  "colour_id"
    t.integer  "garment_id"
    t.integer  "occasion_id"
    t.string   "name"
    t.string   "description"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "outfits", ["colour_id"], name: "index_outfits_on_colour_id"
  add_index "outfits", ["garment_id"], name: "index_outfits_on_garment_id"
  add_index "outfits", ["occasion_id"], name: "index_outfits_on_occasion_id"
  add_index "outfits", ["shape_id"], name: "index_outfits_on_shape_id"

  create_table "searches", force: :cascade do |t|
    t.integer  "shape_id"
    t.integer  "colour_id"
    t.integer  "garment_id"
    t.integer  "occasion_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "searches", ["garment_id"], name: "index_searches_on_garment_id"
  add_index "searches", ["occasion_id"], name: "index_searches_on_occasion_id"
  add_index "searches", ["shape_id"], name: "index_searches_on_shape_id"

  create_table "shapes", force: :cascade do |t|
    t.string   "avatar"
    t.string   "description"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
