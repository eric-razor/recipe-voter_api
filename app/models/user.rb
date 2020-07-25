class User < ApplicationRecord
  has_many :notes
  has_many :tickers, through: :notes
end
