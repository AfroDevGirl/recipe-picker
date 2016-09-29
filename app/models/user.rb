class User < ApplicationRecord
  has_one :pantry
  has_many :items, through: :pantry

  has_secure_token
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true
end
