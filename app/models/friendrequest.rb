class Friendrequest < ApplicationRecord

  belongs_to :user
  belongs_to :usersend, class_name: 'User', foreign_key: :usersend_id

end
