class Game < ActiveRecord::Base
	
	# t.string :title, :null => false
	# t.string :url, :null => false
	
	validates_presence_of :title, :url
	
end
