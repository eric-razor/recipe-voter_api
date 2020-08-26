class CardSerializer < ActiveModel::Serializer
  attributes :id, :recipe_name, :recipe_steps, :recipe_ingredients, :user_id

  belongs_to :user, serializer: UserSerializer
end
