class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :messages
  has_one :user
  has_one :usersend, foreign_key: "usersend_id", class_name: "Message"

  has_one :friendlist

  has_many :friendrequest
  has_one :user
  has_one :usersend, foreign_key: "usersend_id", class_name: "Friendrequest"


  has_many :blocklists
  has_one :user
  has_one :userblock, foreign_key: "userblock_id", class_name: "Blocklist"

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
