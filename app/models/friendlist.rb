class Friendlist < ApplicationRecord

  has_many :desfriendlists
  has_many :users, :through => :desfriendlists
end
