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

ActiveRecord::Schema.define(version: 20160127091039) do

  create_table "childmenus", force: :cascade do |t|
    t.integer  "mainmenu_id"
    t.string   "title",       limit: 255
    t.string   "text",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "contents", force: :cascade do |t|
    t.integer  "childmenu_id"
    t.string   "title",        limit: 255
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mainmenus", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
    t.integer  "ancestry_depth",             default: 0
    t.string   "ancestry",       limit: 255
    t.string   "style_class"
  end

  create_table "page_hierarchies", id: false, force: :cascade do |t|
    t.integer "ancestor_id",   null: false
    t.integer "descendant_id", null: false
    t.integer "generations",   null: false
  end

  add_index "page_hierarchies", ["ancestor_id", "descendant_id", "generations"], name: "page_anc_desc_udx", unique: true
  add_index "page_hierarchies", ["descendant_id"], name: "page_desc_idx"

  create_table "relationships", force: :cascade do |t|
    t.integer  "parent_id"
    t.integer  "derived_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "level"
  end

  add_index "relationships", ["derived_id"], name: "index_relationships_on_derived_id"
  add_index "relationships", ["parent_id", "derived_id"], name: "index_relationships_on_parent_id_and_derived_id", unique: true
  add_index "relationships", ["parent_id"], name: "index_relationships_on_parent_id"

  create_table "users", force: :cascade do |t|
    t.integer  "age"
    t.integer  "pay"
    t.integer  "stature"
    t.integer  "weigh"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
