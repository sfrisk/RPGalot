class KlassSkill < ActiveRecord::Base
	
	
	# t.integer :klass_id, :null => false
	#   t.integer :skill_id, :null => false


	belongs_to :klass
	belongs_to :skill
	validates_presence_of :klass_id, :skill_id
	validates_uniqueness_of :klass_id, :scope => :skill_id
end
