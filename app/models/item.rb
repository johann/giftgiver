class Item < ApplicationRecord
  has_many :gifts
  has_many :users, through: :gifts


end
