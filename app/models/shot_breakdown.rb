class ShotBreakdown < ActiveRecord::Base
	#relationships
	has_many :layers

	belongs_to :movie
end
