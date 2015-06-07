class McPuppet < ActiveRecord::Base
	#relationships
	has_and_belongs_to_many :layers
end
