class User < ApplicationRecord
  has_secure_password

  has_many :dishes
  has_many :cards, through: :dishes

  validates :name, :email, presence: true, uniqueness: true

 end
