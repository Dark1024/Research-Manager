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

ActiveRecord::Schema.define(version: 20160228182549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conferences", force: :cascade do |t|
    t.string   "name",       limit: 75,  null: false
    t.string   "place",      limit: 150, null: false
    t.string   "sponsor",    limit: 50,  null: false
    t.datetime "date",                   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string   "name",        limit: 30, null: false
    t.text     "description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "journals", force: :cascade do |t|
    t.string   "name",       limit: 75,  null: false
    t.string   "company",    limit: 50,  null: false
    t.string   "link",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
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
