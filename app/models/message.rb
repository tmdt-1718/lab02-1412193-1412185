class Message < ApplicationRecord
  belongs_to :typemessage

  belongs_to :user
  belongs_to :usersend, class_name: 'User', foreign_key: :usersend_id

end
