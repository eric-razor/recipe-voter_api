class Dish < ApplicationRecord
  belongs_to :user
  belongs_to :recipe_card
end
