class Card < ApplicationRecord
  has_many :dishes
  has_many :users, through: :dishes

  validates :recipe_name, :recipe_steps, :recipe_ingredients, presence: true
end
