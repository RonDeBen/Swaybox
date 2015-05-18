class Movie < ActiveRecord::Base
	#relationships
	has_many :ShotBreakdowns
end
