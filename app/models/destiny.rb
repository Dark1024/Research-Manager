class Destiny < ActiveRecord::Base
  actable
  has_one :article
end
