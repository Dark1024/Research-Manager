class Faculty < ActiveRecord::Base
  belongs_to :university
  has_many :researchers
end
