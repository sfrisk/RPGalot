class User < ActiveRecord::Base
	
	# t.string :first_name
	#   t.string :last_name
	#   t.string :bio
	#   t.boolean :looking_for_group, :null => false, :default => true
	#   t.string :prefered_race
	#   t.string :prefered_class
	#   t.string :gender
	#   t.string :eye_color
	#   t.string :hair_color
	#   t.string :alignment
	# :users, :story_focused 
	# :users, :tactical_focused
	# :users, :combat_focused
	# :users, :strategic_focused
	
	Alignments = ['Lawful Good', 'Neutral Good', 'Chaotic Good', 'Lawful Neutral', 'Neutral', 'Chaotic Neutral', 'Lawful Evil', 'Neutral Evil', 'Chaotic Evil']
	Genders = ['Male', 'Female']
	
	
	validates_presence_of :first_name, :last_name
	validates_numericality_of :story_focused, :tactical_focused, :combat_focused, :strategic_focused, :greater_than => 0, :less_than_or_equal_to => 5
	#validates_inclusion_of :alignment, :in => Alignments, :allow_blank => true
	validates_inclusion_of :gender, :in => Genders, :allow_blank => true
	has_many :created_groups, :class_name => 'Group', :foreign_key => :created_by_id
	has_many :characters, :class_name => 'Character', :foreign_key => :user_id
	has_many :campaigns, :class_name => 'Campaign', :foreign_key => :game_master_id
	has_many :memberships
	has_many :groups, :through => :memberships
	
	def name
		"#{first_name} #{last_name}"
	end
	
	def confidential
		"Confidential"
	end
	
end
