class Researcher < ActiveRecord::Base
  belongs_to :faculty
  has_many :researchs
end
