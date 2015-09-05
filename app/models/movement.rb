class Movement < ActiveRecord::Base
	validates :movement_name, :presence => true, :length => { :minimum => 2 }
	validates :movement_category, :presence =>true

	MOVEMENT_CATEGORIES = [
		:weight,
		:gymnastics,
		:cardio
	]
end
