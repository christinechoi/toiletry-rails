class Collection < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :users, through: :items
  validates :title, presence: true

  accepts_nested_attributes_for :items

  def items_attributes=(item_attributes)
    binding.pry
    item_attributes.values.each do |item_attribute|
      @item = self.items.build(item_attribute)
      binding.pry
    end
  end

end
