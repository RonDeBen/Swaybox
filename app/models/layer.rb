class Layer < ActiveRecord::Base
	#relationships
	belongs_to :shot_breakdown

	has_many :wide_puppets
	accepts_nested_attributes_for :wide_puppets, allow_destroy: true
	has_many :mc_puppets
	accepts_nested_attributes_for :mc_puppets, allow_destroy: true
	has_many :props
	accepts_nested_attributes_for :props, allow_destroy: true
	has_many :wardrobes
	accepts_nested_attributes_for :wardrobes, allow_destroy: true
end
