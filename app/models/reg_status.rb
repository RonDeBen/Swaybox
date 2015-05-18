class RegStatus < ActiveRecord::Base
	#relationships
	belongs_to :wardrobe
	belongs_to :prop
	belongs_to :location
end
