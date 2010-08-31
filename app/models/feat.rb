class Feat < ActiveRecord::Base
	
	 # t.string :title
	 # t.string :benefit
	
validates_presence_of :title, :benefit
end
