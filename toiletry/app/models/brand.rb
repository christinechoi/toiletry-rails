class Brand < ApplicationRecord
  has_many :items
  has_many :collections, through: :items
end
