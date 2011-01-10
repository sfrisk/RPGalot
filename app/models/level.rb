class Level < ActiveRecord::Base
	# create_table "levels", :force => true do |t|
	#     t.integer  "name",                        :null => false
	#     t.integer  "xp",                          :null => false
	#     t.integer  "base_save_bonus_good"
	#     t.integer  "base_save_bonus_poor"
	#     t.text     "base_attack_bonus_good"
	#     t.text     "base_attack_bonus_average"
	#     t.text     "base_attack_bonus_poor"
	#     t.integer  "class_skill_max_ranks"
	#     t.decimal  "cross_class_skill_max_ranks"
	#     t.boolean  "new_feat"
	#     t.boolean  "ability_score_increases"
	#     t.integer  "game_id",                     :null => false
	#     t.datetime "created_at"
	#     t.datetime "updated_at"
	#   end
	
	belongs_to :game, :class_name => 'Game', :foreign_key => :game_id	
	
end
