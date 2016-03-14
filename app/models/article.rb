class Article < ActiveRecord::Base
	belongs_to :research
	has_many :texts
  has_many :article_histories
end
