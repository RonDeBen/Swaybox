class Movie < ActiveRecord::Base
	has_many :ShotBreakdowns
end
