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

ActiveRecord::Schema.define(:version => 20130305223643) do

  create_table "inbound_messages", :id => false, :force => true do |t|
    t.string   "notification_id", :limit => 36, :null => false
    t.string   "message_id",      :limit => 36, :null => false
    t.string   "account_id",      :limit => 36, :null => false
    t.text     "message_text",                  :null => false
    t.string   "from",            :limit => 20, :null => false
    t.string   "to",              :limit => 20, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "inbound_messages", ["account_id"], :name => "index_inbound_messages_on_account_id"
  add_index "inbound_messages", ["notification_id", "message_id"], :name => "index_inbound_messages_on_notification_id_and_message_id", :unique => true
  add_index "inbound_messages", ["to"], :name => "index_inbound_messages_on_to"

  create_table "outbound_messages", :force => true do |t|
    t.string   "message_id",   :limit => 36, :null => false
    t.datetime "delivered_at"
    t.datetime "failed_at"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "outbound_messages", ["message_id"], :name => "index_outbound_messages_on_message_id", :unique => true

end
