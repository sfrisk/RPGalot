class Group < ActiveRecord::Base
	# t.string :title
	# t.text :description
	# t.boolean :invite_only, :null => false, :default => false
	# t.integer :created_by_id, :null => false
	
	validates_presence_of :title, :created_by_id
	validates_uniqueness_of :title
	belongs_to :created_by, :class_name => 'User'
	has_many :created_campaigns, :class_name => 'Campaign', :foreign_key => :group_id
	has_many :memberships
	has_many :users, :through => :memberships
end
