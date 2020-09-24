class User < ApplicationRecord
  has_secure_password

  has_many :cards
  has_many :items

  validates :name, :email, :password, presence: true
  validates :email, uniqueness: { case_sensitive: false }

 end
