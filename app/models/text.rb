class Text < ActiveRecord::Base
	belongs_to :researcher
	belongs_to :article
end
