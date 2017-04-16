class Item < ApplicationRecord
  belongs_to :brand
  belongs_to :collection


  # def brand_name=(name)
  #    self.brand = Item.find_or_create_by(name: name)
  # end
end
