class CardSerializer < ActiveModel::Serializer
  attributes :id, :recipe_name, :recipe_steps, :recipe_ingredients

  has_many :users, serializer: UserSerializer
end
