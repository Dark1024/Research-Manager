class Researcher < ActiveRecord::Base
	belongs_to :faculty
	has_many :assignments
	has_many :texts

	def name
		return first_name + " " + last_name
	end
end
