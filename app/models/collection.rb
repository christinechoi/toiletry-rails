class Collection < ApplicationRecord
  has_many :items, inverse_of: :collection, dependent: :destroy
  has_many :users, through: :items
  validates :title, uniqueness: true

  def items_attributes=(item_attributes)
    binding.pry
    item_attributes.values.each do |item_attribute|
      item = item.find_or_create_by(item_attribute)
      self.items << item
    end
  end

end
