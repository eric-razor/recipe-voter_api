class User < ApplicationRecord
  has_secure_password

  has_many :dishes
  has_many :recipe_cards, through: :dishes

  validates :name, :email. presence: true
  validates :email, uniqueness: true

end
