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

ActiveRecord::Schema.define(version: 2025_09_21_132054) do

  create_table "childmenus", force: :cascade do |t|
    t.integer "mainmenu_id"
    t.string "title", limit: 255
    t.string "text", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
    t.index ["user_id"], name: "index_childmenus_on_user_id"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", limit: 255, null: false
    t.string "data_content_type", limit: 255
    t.integer "data_file_size"
    t.integer "assetable_id"
    t.string "assetable_type", limit: 30
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"
  end

  create_table "comments", force: :cascade do |t|
    t.text "text"
    t.integer "post_id"
    t.integer "user_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "mainmenus", force: :cascade do |t|
    t.string "title", limit: 255
    t.text "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "parent_id"
    t.integer "ancestry_depth", default: 0
    t.string "ancestry", limit: 255
    t.string "style_class"
    t.integer "user_id"
    t.index ["user_id"], name: "index_mainmenus_on_user_id"
  end

  create_table "page_hierarchies", id: false, force: :cascade do |t|
    t.integer "ancestor_id", null: false
    t.integer "descendant_id", null: false
    t.integer "generations", null: false
    t.index ["ancestor_id", "descendant_id", "generations"], name: "page_anc_desc_udx", unique: true
    t.index ["descendant_id"], name: "page_desc_idx"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "childmenu_id"
    t.string "title", limit: 255
    t.text "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "derived_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "level"
    t.index ["derived_id"], name: "index_relationships_on_derived_id"
    t.index ["parent_id", "derived_id"], name: "index_relationships_on_parent_id_and_derived_id", unique: true
    t.index ["parent_id"], name: "index_relationships_on_parent_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "age"
    t.integer "pay"
    t.integer "stature"
    t.integer "weigh"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.boolean "admin"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
