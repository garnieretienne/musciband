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

ActiveRecord::Schema.define(version: 20131018140711) do

  create_table "publications", force: true do |t|
    t.string   "title"
    t.text     "article"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "track_attachments", force: true do |t|
    t.integer  "publication_id"
    t.integer  "track_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "track_attachments", ["publication_id"], name: "index_track_attachments_on_publication_id"
  add_index "track_attachments", ["track_id"], name: "index_track_attachments_on_track_id"

  create_table "tracks", force: true do |t|
    t.string   "title"
    t.integer  "duration"
    t.text     "description"
    t.string   "source"
    t.integer  "internal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
