class Blocklist < ApplicationRecord
  belongs_to :user
  belongs_to :userblock, class_name: 'User', foreign_key: :userblock_id
end
