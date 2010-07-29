# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100723200353) do

  create_table "campaigns", :force => true do |t|
    t.string   "title",                            :null => false
    t.text     "description"
    t.integer  "group_id",                         :null => false
    t.integer  "game_master_id",                   :null => false
    t.integer  "max_characters"
    t.integer  "min_characters"
    t.boolean  "open",           :default => true, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", :force => true do |t|
    t.integer  "user_id",     :null => false
    t.integer  "campaign_id", :null => false
    t.string   "name",        :null => false
    t.integer  "age"
    t.string   "gender"
    t.integer  "height"
    t.integer  "weight"
    t.string   "eyes"
    t.string   "hair"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "STR"
    t.integer  "DEX"
    t.integer  "CON"
    t.integer  "INT"
    t.integer  "WIS"
    t.integer  "CHA"
    t.string   "race"
    t.string   "klass"
    t.integer  "level"
    t.string   "alignment"
    t.string   "deity"
  end

  create_table "games", :force => true do |t|
    t.string   "title",      :null => false
    t.string   "url",        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "invite_only",   :default => false, :null => false
    t.integer  "created_by_id",                    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberships", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "group_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "bio"
    t.boolean  "looking_for_group", :default => true, :null => false
    t.string   "prefered_race"
    t.string   "prefered_class"
    t.string   "gender"
    t.string   "eye_color"
    t.string   "hair_color"
    t.string   "alignment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "story_focused"
    t.integer  "tactical_focused"
    t.integer  "combat_focused"
    t.integer  "strategic_focused"
  end

end
