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

ActiveRecord::Schema.define(:version => 20101024200928) do

  create_table "alignments", :force => true do |t|
    t.string   "title",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "character_feats", :force => true do |t|
    t.integer  "character_id", :null => false
    t.integer  "feat_id",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", :force => true do |t|
    t.integer  "user_id",                                                     :null => false
    t.integer  "campaign_id"
    t.string   "name",                                                        :null => false
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
    t.integer  "race_id",                       :limit => 255
    t.integer  "klass_id",                      :limit => 255
    t.integer  "level"
    t.integer  "alignment_id",                  :limit => 255
    t.integer  "deity_id",                      :limit => 255
    t.integer  "skill_appraise",                               :default => 0, :null => false
    t.integer  "skill_balance",                                :default => 0, :null => false
    t.integer  "skill_bluff",                                  :default => 0, :null => false
    t.integer  "skill_climb",                                  :default => 0, :null => false
    t.integer  "skill_concentration",                          :default => 0, :null => false
    t.integer  "skill_craft",                                  :default => 0, :null => false
    t.integer  "skill_decipher_script",                        :default => 0, :null => false
    t.integer  "skill_diplomacy",                              :default => 0, :null => false
    t.integer  "skill_disable_device",                         :default => 0, :null => false
    t.integer  "skill_disguise",                               :default => 0, :null => false
    t.integer  "skill_escape_artist",                          :default => 0, :null => false
    t.integer  "skill_forgery",                                :default => 0, :null => false
    t.integer  "skill_gather_information",                     :default => 0, :null => false
    t.integer  "skill_handle_animal",                          :default => 0, :null => false
    t.integer  "skill_heal",                                   :default => 0, :null => false
    t.integer  "skill_hide",                                   :default => 0, :null => false
    t.integer  "skill_intimidate",                             :default => 0, :null => false
    t.integer  "skill_jump",                                   :default => 0, :null => false
    t.integer  "skill_knowledge_arcana",                       :default => 0, :null => false
    t.integer  "skill_knowledge_architecture",                 :default => 0, :null => false
    t.integer  "skill_knowledge_dungeoneering",                :default => 0, :null => false
    t.integer  "skill_knowledge_geography",                    :default => 0, :null => false
    t.integer  "skill_knowledge_history",                      :default => 0, :null => false
    t.integer  "skill_knowledge_local",                        :default => 0, :null => false
    t.integer  "skill_knowledge_nature",                       :default => 0, :null => false
    t.integer  "skill_knowledge_nobility",                     :default => 0, :null => false
    t.integer  "skill_knowledge_religion",                     :default => 0, :null => false
    t.integer  "skill_knowledge_planes",                       :default => 0, :null => false
    t.integer  "skill_listen",                                 :default => 0, :null => false
    t.integer  "skill_move_silently",                          :default => 0, :null => false
    t.integer  "skill_open_lock",                              :default => 0, :null => false
    t.integer  "skill_perform",                                :default => 0, :null => false
    t.integer  "skill_profession",                             :default => 0, :null => false
    t.integer  "skill_ride",                                   :default => 0, :null => false
    t.integer  "skill_search",                                 :default => 0, :null => false
    t.integer  "skill_sense_motive",                           :default => 0, :null => false
    t.integer  "skill_sleight_of_hand",                        :default => 0, :null => false
    t.integer  "skill_speak_language",                         :default => 0, :null => false
    t.integer  "skill_spellcraft",                             :default => 0, :null => false
    t.integer  "skill_spot",                                   :default => 0, :null => false
    t.integer  "skill_survival",                               :default => 0, :null => false
    t.integer  "skill_swim",                                   :default => 0, :null => false
    t.integer  "skill_tumble",                                 :default => 0, :null => false
    t.integer  "skill_use_magic_device",                       :default => 0, :null => false
    t.integer  "skill_use_rope",                               :default => 0, :null => false
  end

  create_table "deities", :force => true do |t|
    t.string   "title",                       :null => false
    t.string   "description"
    t.integer  "alignment_id",                :null => false
    t.string   "domains"
    t.integer  "game_id",      :default => 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feats", :force => true do |t|
    t.string   "title",      :null => false
    t.string   "benefit",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "klass_alignments", :force => true do |t|
    t.integer  "klass_id",     :null => false
    t.integer  "alignment_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "klass_skills", :force => true do |t|
    t.integer  "klass_id",   :null => false
    t.integer  "skill_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "klasses", :force => true do |t|
    t.string   "title",        :null => false
    t.integer  "hit_die",      :null => false
    t.integer  "skill_points", :null => false
    t.integer  "attack_bonus", :null => false
    t.boolean  "fort_save",    :null => false
    t.boolean  "ref_save",     :null => false
    t.boolean  "will_save",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberships", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "group_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", :force => true do |t|
    t.string   "title",      :null => false
    t.integer  "speed",      :null => false
    t.string   "size",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", :force => true do |t|
    t.string   "name",          :null => false
    t.string   "fancy_name",    :null => false
    t.integer  "armor_penalty", :null => false
    t.boolean  "need_training", :null => false
    t.string   "ability",       :null => false
    t.integer  "game_id",       :null => false
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
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
  end

  create_table "weapons", :force => true do |t|
    t.string   "title",         :null => false
    t.integer  "cost"
    t.string   "damage_small",  :null => false
    t.string   "damage_medium", :null => false
    t.string   "critical",      :null => false
    t.integer  "range"
    t.integer  "weight"
    t.string   "proficiency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
