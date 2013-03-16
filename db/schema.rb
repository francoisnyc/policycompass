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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130316165526) do

  create_table "candidate_answers", :force => true do |t|
    t.integer  "candidate_id", :null => false
    t.integer  "question_id",  :null => false
    t.integer  "answer",       :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "candidate_answers", ["candidate_id"], :name => "index_candidate_answers_on_candidate_id"
  add_index "candidate_answers", ["question_id"], :name => "index_candidate_answers_on_question_id"

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "formal_affiliation"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "orgs", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "contact_name"
    t.string   "website"
    t.string   "phone_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "policies", :force => true do |t|
    t.string   "name"
    t.string   "link"
    t.text     "abstract"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "questions", :force => true do |t|
    t.string   "question"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "voters", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "formal_affiliation"
    t.string   "location"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
