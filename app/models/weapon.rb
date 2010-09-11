class Weapon < ActiveRecord::Base
	# t.string :title, :null => false
	#   t.int :cost, :null => false
	#   t.string :damage_small, :null => false
	#   t.string :damage_medium, :null => false
	#   t.string :critical, :null => false
	#   t.int :range
	#   t.int :weight

	#   t.string :proficiency
	
	Proficiencies = ['Simple', 'Martial', 'Exotic']
	#Types = ['Bludgening', 'Piercing', 'Slashing']
	
	validates_uniqueness_of :title
	validates_presence_of :title

	validates_inclusion_of :proficiency, :in => Proficiencies, :allow_blank => false

end