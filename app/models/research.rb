class Research < ActiveRecord::Base
	has_many :assignments
	has_many :articles
end
