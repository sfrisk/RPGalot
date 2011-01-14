class Character < ActiveRecord::Base
	
	Genders = ['Male', 'Female']
	Races = ['Human', 'Dwarf', 'Elf', 'Gnome', 'Half-Elf', 'Half-Orc', 'Halfling']
	abilities = ['STR','DEX','CON','INT','WIS','CHA']

	
	belongs_to :user, :class_name => 'User'
	belongs_to :campaign, :class_name => 'Campaign'
	belongs_to :alignment, :class_name => 'Alignment'
	belongs_to :klass, :class_name => 'Klass'
	belongs_to :deity, :class_name => 'Deity'
	belongs_to :race, :class_name => 'Race'

	has_many :character_feats
	has_many :feats, :through => :character_feats
	
	validates_inclusion_of :gender, :in => Genders, :allow_blank => false
	#validates_inclusion_of :race_id, :in => Races, :allow_blank => false
	validates_presence_of :user_id #, :campaign_id
	validates_numericality_of :STR, :DEX, :CON, :INT, :WIS, :CHA, :greater_than => 3, :less_than_or_equal_to => 18

	
end
