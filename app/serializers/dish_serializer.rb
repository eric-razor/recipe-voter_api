class DishSerializer < ActiveModel::Serializer
  attributes :id, :category
  belongs_to :user
  belongs_to :card
end
