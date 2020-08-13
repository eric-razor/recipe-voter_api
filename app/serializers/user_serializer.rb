class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name

  has_many :dishes
  has_many :cards, through: :dishes
end
