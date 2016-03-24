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

ActiveRecord::Schema.define(version: 20160324150803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title",      limit: 50,                 null: false
    t.text     "content"
    t.boolean  "private",               default: false
    t.integer  "author_id",                             null: false
    t.integer  "world_id"
    t.integer  "story_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "articles", ["author_id"], name: "index_articles_on_author_id", using: :btree
  add_index "articles", ["story_id"], name: "index_articles_on_story_id", using: :btree
  add_index "articles", ["world_id"], name: "index_articles_on_world_id", using: :btree

  create_table "articles_tags", id: false, force: :cascade do |t|
    t.integer "article_id"
    t.integer "tag_id"
  end

  add_index "articles_tags", ["article_id"], name: "index_articles_tags_on_article_id", using: :btree
  add_index "articles_tags", ["tag_id"], name: "index_articles_tags_on_tag_id", using: :btree

  create_table "stories", force: :cascade do |t|
    t.string   "name",       limit: 50
    t.boolean  "private",               default: false
    t.integer  "world_id",                              null: false
    t.integer  "author_id",                             null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "stories", ["author_id"], name: "index_stories_on_author_id", using: :btree
  add_index "stories", ["world_id"], name: "index_stories_on_world_id", using: :btree

  create_table "story_contributors", id: false, force: :cascade do |t|
    t.integer "contributor_id"
    t.integer "story_id"
  end

  create_table "story_tags", id: false, force: :cascade do |t|
    t.integer "story_id", null: false
    t.integer "tag_id",   null: false
  end

  add_index "story_tags", ["story_id"], name: "index_story_tags_on_story_id", using: :btree
  add_index "story_tags", ["tag_id"], name: "index_story_tags_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.boolean  "private",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 20,                 null: false
    t.string   "password_digest",                            null: false
    t.string   "email",                                      null: false
    t.boolean  "is_admin",                   default: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "worlds", force: :cascade do |t|
    t.string   "name",        limit: 50,                 null: false
    t.boolean  "private",                default: false
    t.text     "description"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

end
