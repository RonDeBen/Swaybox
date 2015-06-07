class ShotBreakdown < ActiveRecord::Base
	has_many :layers
	accepts_nested_attributes_for :layers, allow_destroy: true

	belongs_to :movie
end
