class Desfriendlist < ApplicationRecord
  belongs_to :user
  belongs_to :friendlist
end
