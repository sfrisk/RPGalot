class Language < ActiveRecord::Base
		belongs_to :game, :class_name => 'Game', :foreign_key => :game_id	
end
