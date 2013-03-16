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

ActiveRecord::Schema.define(:version => 20130316172701) do

  create_table "orgs", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "contact_name"
    t.string   "website"
    t.string   "phone_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.boolean  "approved"
  end

  add_index "orgs", ["id"], :name => "index_orgs_on_id"

  create_table "policies", :force => true do |t|
    t.string   "name"
    t.string   "link"
    t.text     "abstract"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "org_id"
  end

  add_index "policies", ["id"], :name => "index_policies_on_id"
  add_index "policies", ["org_id"], :name => "index_policies_on_org_id"

  create_table "questions", :force => true do |t|
    t.string   "question"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "policy_id"
  end

  add_index "questions", ["id"], :name => "index_questions_on_id"
  add_index "questions", ["policy_id"], :name => "index_questions_on_policy_id"

  create_table "voters", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
