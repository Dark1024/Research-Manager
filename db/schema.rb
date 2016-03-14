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

ActiveRecord::Schema.define(version: 20160314152303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_histories", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "state_id"
    t.datetime "deadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string   "name"
    t.integer  "research_id"
    t.string   "commet"
    t.string   "indexes"
    t.text     "link"
    t.boolean  "applied"
    t.integer  "ammount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.integer  "research_id"
    t.integer  "researcher_id"
    t.integer  "type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "conferences", force: :cascade do |t|
    t.string   "name"
    t.string   "place"
    t.string   "sponsor"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "university_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "journals", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.text     "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "researchers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "phone"
    t.integer  "office_phone"
    t.integer  "faculty_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "researches", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "faculty_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "texts", force: :cascade do |t|
    t.integer  "researcher_id"
    t.integer  "article_id"
    t.integer  "author_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universities", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
