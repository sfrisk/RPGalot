class CharacterFeat < ActiveRecord::Base
	# t.integer :character_id, :null => false
	#   t.integer :feat_id, :null => false
	
	belongs_to :character
	belongs_to :feat
	validates_presence_of :character_id, :feat_id
	validates_uniqueness_of :character_id, :scope => :feat_id
end
