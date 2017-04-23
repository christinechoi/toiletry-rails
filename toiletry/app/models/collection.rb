class Collection < ApplicationRecord
  belongs_to :user, optional: true
  has_many :items 
  has_many :brands, through: :items

  accepts_nested_attributes_for :items

  def item_name=(name)
     self.items << Item.find_or_create_by(name: name)
  end

  # def brand_name=(name)
  #   self.brand = Brand.find_or_create_by(name: name)
  # end


  def items_attributes=(items_attributes)
    # raise params.inspect
    items_attributes.each do |item_attributes|
      self.items.build(item_attributes)
    end
  end

end
