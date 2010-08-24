class Skill < ActiveRecord::Base
	
  # t.string :name, :null => false
  # t.string :fancy_name, :null => false
  # t.integer :armor_penalty, :null => false
  # t.boolean :need_training, :null => false
  # t.string :ability, :null => false
  # t.integer :game_id, :null => false
	
	Abilities = ['STR','DEX','CON','INT','WIS','CHA']
	
	validates_presence_of :name, :fancy_name, :armor_penalty, :ability, :game_id
	belongs_to :game, :class_name => 'Game'
	
	
end
