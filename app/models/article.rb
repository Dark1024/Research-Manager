class Article < ActiveRecord::Base
  has_many :article_histories
  has_many :states, :throgh => :article_histories
  belongs_to :destiny
  has_and_belongs_to_many :teachers
end
