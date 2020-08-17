class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name

  has_many :cards, serializer: CardSerializer
end
