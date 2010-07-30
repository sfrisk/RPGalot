class AddCharacterSkillz < ActiveRecord::Migration
  def self.up
		add_column :characters, :skill_appraise, :integer, :null => false, :default => 0
		add_column :characters, :skill_balance, :integer, :null => false, :default => 0
		add_column :characters, :skill_bluff, :integer, :null => false, :default => 0
		add_column :characters, :skill_climb, :integer, :null => false, :default => 0
		add_column :characters, :skill_concentration, :integer, :null => false, :default => 0
		add_column :characters, :skill_craft, :integer, :null => false, :default => 0
		add_column :characters, :skill_decipher_script, :integer, :null => false, :default => 0
		add_column :characters, :skill_diplomacy, :integer, :null => false, :default => 0
		add_column :characters, :skill_disable_device, :integer, :null => false, :default => 0
		add_column :characters, :skill_disguise, :integer, :null => false, :default => 0
		add_column :characters, :skill_escape_artist, :integer, :null => false, :default => 0
		add_column :characters, :skill_forgery, :integer, :null => false, :default => 0
		add_column :characters, :skill_gather_information, :integer, :null => false, :default => 0
		add_column :characters, :skill_handle_animal, :integer, :null => false, :default => 0
		add_column :characters, :skill_heal, :integer, :null => false, :default => 0
		add_column :characters, :skill_hide, :integer, :null => false, :default => 0
		add_column :characters, :skill_intimidate, :integer, :null => false, :default => 0
		add_column :characters, :skill_jump, :integer, :null => false, :default => 0
		add_column :characters, :skill_knowledge_arcana, :integer, :null => false, :default => 0
		add_column :characters, :skill_knowledge_architecture, :integer, :null => false, :default => 0
		add_column :characters, :skill_knowledge_dungeoneering, :integer, :null => false, :default => 0
		add_column :characters, :skill_knowledge_geography, :integer, :null => false, :default => 0
		add_column :characters, :skill_knowledge_history, :integer, :null => false, :default => 0
		add_column :characters, :skill_knowledge_local, :integer, :null => false, :default => 0
		add_column :characters, :skill_knowledge_nature, :integer, :null => false, :default => 0
		add_column :characters, :skill_knowledge_nobility, :integer, :null => false, :default => 0
		add_column :characters, :skill_knowledge_religion, :integer, :null => false, :default => 0
		add_column :characters, :skill_knowledge_planes, :integer, :null => false, :default => 0
		add_column :characters, :skill_listen, :integer, :null => false, :default => 0
		add_column :characters, :skill_move_silently, :integer, :null => false, :default => 0
		add_column :characters, :skill_open_lock, :integer, :null => false, :default => 0
		add_column :characters, :skill_perform, :integer, :null => false, :default => 0
		add_column :characters, :skill_profession, :integer, :null => false, :default => 0
		add_column :characters, :skill_ride, :integer, :null => false, :default => 0
		add_column :characters, :skill_search, :integer, :null => false, :default => 0
		add_column :characters, :skill_sense_motive, :integer, :null => false, :default => 0
		add_column :characters, :skill_sleight_of_hand, :integer, :null => false, :default => 0
		add_column :characters, :skill_speak_language, :integer, :null => false, :default => 0
		add_column :characters, :skill_spellcraft, :integer, :null => false, :default => 0
		add_column :characters, :skill_spot, :integer, :null => false, :default => 0
		add_column :characters, :skill_survival, :integer, :null => false, :default => 0
		add_column :characters, :skill_swim, :integer, :null => false, :default => 0
		add_column :characters, :skill_tumble, :integer, :null => false, :default => 0
		add_column :characters, :skill_use_magic_device, :integer, :null => false, :default => 0
		add_column :characters, :skill_use_rope, :integer, :null => false, :default => 0
  end

  def self.down
		remove_column :characters, :skill_appraise
		remove_column :characters, :skill_balance
		remove_column :characters, :skill_bluff
		remove_column :characters, :skill_climb
		remove_column :characters, :skill_concentration
		remove_column :characters, :skill_craft
		remove_column :characters, :skill_decipher_script
		remove_column :characters, :skill_diplomacy
		remove_column :characters, :skill_disable_device
		remove_column :characters, :skill_disguise
		remove_column :characters, :skill_escape_artist
		remove_column :characters, :skill_forgery
		remove_column :characters, :skill_gather_information
		remove_column :characters, :skill_handle_animal
		remove_column :characters, :skill_heal
		remove_column :characters, :skill_hide
		remove_column :characters, :skill_intimidate
		remove_column :characters, :skill_jump
		remove_column :characters, :skill_knowledge_arcana
		remove_column :characters, :skill_knowledge_architecture
		remove_column :characters, :skill_knowledge_dungeoneering
		remove_column :characters, :skill_knowledge_geography
		remove_column :characters, :skill_knowledge_history
		remove_column :characters, :skill_knowledge_local
		remove_column :characters, :skill_knowledge_nature
		remove_column :characters, :skill_knowledge_nobility
		remove_column :characters, :skill_knowledge_religion
		remove_column :characters, :skill_knowledge_planes
		remove_column :characters, :skill_listen
		remove_column :characters, :skill_move_silently
		remove_column :characters, :skill_open_lock
		remove_column :characters, :skill_perform
		remove_column :characters, :skill_profession
		remove_column :characters, :skill_ride
		remove_column :characters, :skill_search
		remove_column :characters, :skill_sense_motive
		remove_column :characters, :skill_sleight_of_hand
		remove_column :characters, :skill_speak_language
		remove_column :characters, :skill_spellcraft
		remove_column :characters, :skill_spot
		remove_column :characters, :skill_survival
		remove_column :characters, :skill_swim
		remove_column :characters, :skill_tumble
		remove_column :characters, :skill_use_magic_device
		remove_column :characters, :skill_use_rope
  end
end
