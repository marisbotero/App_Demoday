class Course < ActiveRecord::Base
	has_many :user_course
	has_many :users, through: :user_course
	

	has_many :units

	def number_of_units
		self.units.count
	end

end
