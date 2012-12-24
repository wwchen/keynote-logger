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

ActiveRecord::Schema.define(:version => 20121224031839) do

  create_table "logs", :force => true do |t|
    t.string   "token"
    t.string   "ip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notices", :force => true do |t|
    t.string   "detail"
    t.integer  "type_id"
    t.integer  "log_id"
    t.string   "type"
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notices", ["log_id"], :name => "index_notices_on_log_id"
  add_index "notices", ["type_id"], :name => "index_notices_on_type_id"

  create_table "requests", :force => true do |t|
    t.string   "ip"
    t.string   "type"
    t.string   "header"
    t.string   "content"
    t.string   "error_code"
    t.integer  "log_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "requests", ["log_id"], :name => "index_requests_on_log_id"

end
