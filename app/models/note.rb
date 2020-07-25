class Note < ApplicationRecord
  has_many :users
  has_many :tickers, through: :users
end
