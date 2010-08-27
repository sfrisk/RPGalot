class Klass < ActiveRecord::Base
	
	# t.string :title, :null => false
	#   t.integer :hit_die, :null => false
	#   t.integer :skill_points, :null => false
	#   t.integer :attack_bonus, :null => false
	#   t.boolean :fort_save, :null => false
	#   t.boolean :ref_save, :null => false
	#   t.boolean :will_save, :null => false
	validates_presence_of :title, :hit_die, :skill_points, :attack_bonus
	validates_uniqueness_of :title
	validates_numericality_of :hit_die, :skill_points, :attack_bonus
	
	has_many :klass_alignments
	has_many :alignments, :through => :klass_alignments
	has_many :klass_skills
	has_many :skills, :through => :klass_skills
end
