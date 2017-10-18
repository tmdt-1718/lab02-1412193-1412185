class Friendlist < ApplicationRecord

  # has_many :desfriendlists
  # has_many :users, :through => :desfriendlists
  has_many :desfriendlists
  has_many :friendlists, :through => :desfriendlists

  # has_many :users

  belongs_to :user
end
