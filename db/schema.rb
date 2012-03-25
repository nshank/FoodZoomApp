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

ActiveRecord::Schema.define(:version => 20120325040200) do

  create_table "loc_times", :force => true do |t|
    t.string   "at_loc_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "address"
    t.float    "lon"
    t.float    "lat"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "truck_loc_by_dates", :force => true do |t|
    t.integer  "truck_id"
    t.integer  "location_id"
    t.integer  "loc_time_id"
    t.string   "location_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "trucks", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "twitter_name"
    t.string   "logo_image"
    t.text     "info"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
