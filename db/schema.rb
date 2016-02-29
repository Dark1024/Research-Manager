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

ActiveRecord::Schema.define(version: 20160229020042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_histories", force: :cascade do |t|
    t.integer  "article_id", null: false
    t.integer  "state_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string   "name",        limit: 100,                 null: false
    t.integer  "research_id",                             null: false
    t.integer  "destiny_id",                              null: false
    t.datetime "deadline"
    t.string   "comment",     limit: 255
    t.string   "indexes",     limit: 255
    t.text     "link",                                    null: false
    t.boolean  "applied",                 default: false
    t.integer  "amount",                  default: 0
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "articles_teachers", id: false, force: :cascade do |t|
    t.integer "article_id"
    t.integer "teacher_id"
  end

  add_index "articles_teachers", ["article_id"], name: "index_articles_teachers_on_article_id", using: :btree
  add_index "articles_teachers", ["teacher_id"], name: "index_articles_teachers_on_teacher_id", using: :btree

  create_table "conferences", force: :cascade do |t|
    t.string   "name",    limit: 75,  null: false
    t.string   "place",   limit: 150, null: false
    t.string   "sponsor", limit: 50,  null: false
    t.datetime "date",                null: false
  end

  create_table "destinies", force: :cascade do |t|
    t.integer "actable_id"
    t.string  "actable_type"
  end

  create_table "faculties", force: :cascade do |t|
    t.string   "name",        limit: 30, null: false
    t.text     "description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "journals", force: :cascade do |t|
    t.string "name",    limit: 75, null: false
    t.string "company", limit: 50, null: false
    t.text   "link",               null: false
  end

  create_table "researchers", force: :cascade do |t|
    t.string   "first_name",    limit: 50, null: false
    t.string   "last_name",     limit: 50, null: false
    t.string   "email",         limit: 50, null: false
    t.integer  "phone_number"
    t.integer  "office_number"
    t.integer  "faculty_id",               null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "researches", force: :cascade do |t|
    t.string   "name",          limit: 20, null: false
    t.text     "description"
    t.integer  "researcher_id",            null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 25, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name",    limit: 50, null: false
    t.string   "last_name",     limit: 50, null: false
    t.string   "email",         limit: 50, null: false
    t.integer  "phone_number"
    t.integer  "office_number"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
