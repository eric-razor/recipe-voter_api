class User < ApplicationRecord
  has_secure_password

  has_many :dishes
  has_many :cards, through: :dishes

  validates :name, :email, :password, presence: true
  validates :name, :email, uniqueness: true

 end
