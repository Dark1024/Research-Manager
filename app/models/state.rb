class State < ActiveRecord::Base
  has_many :article_histories
  has_many :article, :throgh => :article_histories
end
