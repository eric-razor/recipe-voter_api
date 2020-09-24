class Card < ApplicationRecord
  belongs_to :user

  validates :recipe_name, :recipe_steps, :recipe_ingredients, presence: true
end
