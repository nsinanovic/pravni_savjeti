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

ActiveRecord::Schema.define(version: 20140814183503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.string   "content"
    t.integer  "user"
    t.integer  "problem"
    t.string   "additional"
    t.datetime "posted"
    t.integer  "likes"
    t.integer  "dislikes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "problem_id"
  end

  add_index "comments", ["problem_id"], name: "index_comments_on_problem_id", using: :btree

  create_table "problems", force: true do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "user"
    t.string   "category"
    t.string   "status"
    t.datetime "posted"
    t.string   "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "page"
  end

  create_table "sessions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "role"
    t.integer  "stars"
    t.datetime "registered"
    t.datetime "birthdate"
    t.string   "profile"
    t.string   "picture"
    t.string   "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

end
