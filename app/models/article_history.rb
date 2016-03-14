class ArticleHistory < ActiveRecord::Base
  belongs_to :article
  belongs_to :state
end
