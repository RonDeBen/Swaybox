class ShotBreakdown < ActiveRecord::Base
	#relationships
	has_many :layers
	accepts_nested_attributes_for :layers, allow_destroy: true

	belongs_to :movie
	belongs_to :arrangement
end
