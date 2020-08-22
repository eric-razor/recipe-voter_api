class DishSerializer < ActiveModel::Serializer
  attributes :id, :category, :user_id, :card_id
  belongs_to :user
  belongs_to :card
end
