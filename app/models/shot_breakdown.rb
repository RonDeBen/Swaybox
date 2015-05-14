class ShotBreakdown < ActiveRecord::Base
	belongs_to :Movie

	has_many :Layers
end
