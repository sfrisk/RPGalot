class Campaign < ActiveRecord::Base
	
	# t.string :title, :null => false
	#   t.text :description
	#   t.integer :group_id, :null => false
	#   t.integer :game_master_id, :null => false
	#   t.integer :max_characters, :null => false, :default => 5
	#   t.integer :min_characters, :null => false, :default => 3
	#   t.boolean :open, :null => false, :default => true
	
	
	validates_presence_of :title, :group_id, :game_master_id
	belongs_to :group, :class_name => 'Group'
	belongs_to :game_master, :class_name => 'User'
	has_many :characters, :class_name => 'Character', :foreign_key => :campaign_id
	
end
