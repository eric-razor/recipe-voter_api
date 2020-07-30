class RecipeCard < ApplicationRecord

  has_one_attached :image


  has_many :dishes
  has_many :users, through: :dishes
end
