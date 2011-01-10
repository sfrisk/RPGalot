class Game < ActiveRecord::Base
	
	# t.string :title, :null => false
	# t.string :url, :null => false
	
	validates_presence_of :title, :url
	has_many :weapons, :class_name => 'Weapon', :foreign_key => :game_id
	has_many :skills, :class_name => 'Skill', :foreign_key => :game_id
	has_many :races, :class_name => 'Race', :foreign_key => :game_id
	has_many :klasses, :class_name => 'Klass', :foreign_key => :game_id
	has_many :feats, :class_name => 'Feat', :foreign_key => :game_id
	has_many :deities, :class_name => 'Deity', :foreign_key => :game_id
	has_many :alignments, :class_name => 'Alignment', :foreign_key => :game_id
	has_many :languages, :class_name => 'Language', :foreign_key => :game_id
end
