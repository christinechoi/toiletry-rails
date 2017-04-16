class Brand < ApplicationRecord
  has_many :items
  has_many :collections, through: :items


  # def item_name=(name)
  #    self.item = Item.find_or_create_by(name: name)
  # end
end
