class Desfriendlist < ApplicationRecord
  belongs_to :user
  belongs_to :friendlist

  attr_accessor :status
end
