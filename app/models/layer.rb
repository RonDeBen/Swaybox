class Layer < ActiveRecord::Base
	#relationships
	belongs_to :ShotBreakdown

	has_many :WidePuppets
	has_many :McPuppets
	has_many :Props
	has_many :Wardrobes
end
