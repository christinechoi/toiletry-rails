class Item < ApplicationRecord
  belongs_to :brand
  belongs_to :collection
end
