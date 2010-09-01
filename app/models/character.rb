class Character < ActiveRecord::Base
	
	# t.integer :user_id, :null => false
	#t.integer :campaign_id, :null=>false
	#   t.string :name, :null => false
	#   t.integer :age
	#   t.string :gender
	#   t.integer :height
	#   t.integer :weight
	#   t.string :eyes
	#   t.string :hair
	# add_column :characters, :strength, :integer, :null => false
	# add_column :characters, :dexterity, :integer, :null => false
	# add_column :characters, :constitution, :integer, :null => false
	# add_column :characters, :intelligence, :integer, :null => false
	# add_column :characters, :wisdom, :integer, :null => false
	# add_column :characters, :charisma, :integer, :null => false
	# add_column :characters, :race, :string, :null => false
	# add_column :characters, :klass, :string, :null => false
	# add_column :characters, :level, :integer, :null => false
	
	
	
	Genders = ['Male', 'Female']
	Races = ['Human', 'Dwarf', 'Elf', 'Gnome', 'Half-Elf', 'Half-Orc', 'Halfling']
	Klasses = ['Barbarian', 'Bard', 'Cleric', 'Druid', 'Fighter', 'Monk', 'Paladin', 'Ranger', 'Rogue', 'Sorcerer', 'Wizard']
	Alignments = ['Lawful Good', 'Neutral Good', 'Chaotic Good', 'Lawful Neutral', 'Neutral', 'Chaotic Neutral', 'Lawful Evil', 'Neutral Evil', 'Chaotic Evil']
	Deities = ['Boccob', 'Corellon Larethian', 'Ehlonna', 'Erythnul', 'Fharlanghn', 'Garl Glittergold', 'Gruumsh', 'Heironeous', 'Hextor', 'Kord', 'Moradin', 'Nerull', 'Obad-Hai', 'Olidammara', 'Pelor', 'St. Cuthbert', 'Vecna', 'Wee Jas', 'Yondalla', 'Atheist']
	Levels = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
	
	
	belongs_to :user, :class_name => 'User'
	belongs_to :campaign, :class_name => 'Campaign'
	belongs_to :alignment, :class_name => 'Alignment'
	belongs_to :klass, :class_name => 'Klass'
	belongs_to :deity, :class_name => 'Deity'

	
	validates_inclusion_of :gender, :in => Genders, :allow_blank => false
	#validates_inclusion_of :klass, :in => Klasses, :allow_blank => false
	#validates_inclusion_of :race_id, :in => Races, :allow_blank => false
	validates_presence_of :user_id, :campaign_id
	#validates_numericality_of :STR, :DEX, :CON, :INT, :WIS, :CHA, :greater_than => 3, :less_than_or_equal_to => 18

	
end
