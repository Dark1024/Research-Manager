class Assignment < ActiveRecord::Base
	belongs_to :research
	belongs_to :researcher
	belongs_to :type
end
