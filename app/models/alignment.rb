class Alignment < ActiveRecord::Base
	
	has_many :klass_alignments
	has_many :klasses, :through => :klass_alignments
end
