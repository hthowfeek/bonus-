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

ActiveRecord::Schema.define(:version => 20121218200144) do

  create_table "messages", :force => true do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.boolean  "sender_deleted",    :default => false
    t.boolean  "recipient_deleted", :default => false
    t.string   "subject"
    t.text     "body"
    t.datetime "read_at"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "properties", :force => true do |t|
    t.integer  "rooms"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.boolean  "parking_allotment"
    t.boolean  "internet_included"
    t.text     "street_address"
    t.string   "property_type"
    t.string   "owner_id"
    t.string   "manager_id"
    t.integer  "price_per_period"
    t.string   "period_type"
    t.string   "purpose"
    t.string   "owner_name"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "property_pictures", :force => true do |t|
    t.string   "title"
    t.integer  "property_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.boolean  "admin"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
