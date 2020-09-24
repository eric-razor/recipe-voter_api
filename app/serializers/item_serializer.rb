class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :user_id

  belongs_to :user, serializer: UserSerializer
end
