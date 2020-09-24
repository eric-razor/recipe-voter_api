class Item < ApplicationRecord
  belongs_to :user

  validates :item_name, presence: true
  validates :item_name, uniqueness: true
end
