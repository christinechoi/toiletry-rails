class Collection < ApplicationRecord
  belongs_to :user, optional: true
  has_many :items
  has_many :brands, through: :items


  def item_name=(name)
     self.items << Item.find_or_create_by(name: name)
  end

  def items_attributes=(items_attributes)
    items_attributes.each do |item_attributes|
      self.items.build(items_attributes)
    end
  end

end
