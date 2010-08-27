class KlassAlignment < ActiveRecord::Base
	
	# t.integer :klass_id, :null => false
	#   t.integer :alignment_id, :null => false


	belongs_to :klass
	belongs_to :alignment
	validates_presence_of :klass_id, :alignment_id
	validates_uniqueness_of :klass_id, :scope => :alignment_id
	
end
