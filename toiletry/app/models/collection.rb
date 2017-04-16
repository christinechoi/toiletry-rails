class Collection < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :brands, through: :items


  def item_name=(name)
     self.item = Item.find_or_create_by(name: name)
  end


end
