class Race < ActiveRecord::Base
	# t.string :title, :null => false
	#   t.integer :speed, :null => false
	#   t.string :size, :null => false
		belongs_to :game, :class_name => 'Game', :foreign_key => :game_id	
end
