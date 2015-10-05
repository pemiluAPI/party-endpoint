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

ActiveRecord::Schema.define(version: 20151005131516) do

  create_table "parties", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
    t.string   "url_website"
    t.string   "url_facebook"
    t.string   "url_twitter"
    t.string   "url_logo_mini"
    t.string   "url_logo_small"
    t.string   "url_logo_medium"
  end

  create_table "vision_missions", force: true do |t|
    t.integer  "party_id"
    t.text     "vision"
    t.text     "mission"
    t.text     "program"
    t.text     "adart"
    t.text     "address_central_secretariat"
    t.text     "structure_central_party"
    t.string   "resource"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vision_missions", ["party_id"], name: "index_vision_missions_on_party_id", using: :btree

end
