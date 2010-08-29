class Deity < ActiveRecord::Base
	# t.string :title, :null => false
	#   t.string :description
	#   t.integer :alignment_id, :null => false
	#   t.string :domains
	#   t.integer :game_id, :default => 1

validates_presence_of :title, :alignment_id, :game_id
belongs_to :alignment, :class_name => 'Alignment'
belongs_to :game, :class_name => 'Game'	
end
