class Collection < ApplicationRecord
  belongs_to :user, optional: true
  has_many :items 
  has_many :brands, through: :items

  validates :title, uniqueness: true

  accepts_nested_attributes_for :items, :reject_if => lambda { |a| a[:brand].blank? }, :allow_destroy => true

  def item_name=(name)
     self.items << Item.find_or_create_by(name: name)
  end

  def items_attributes=(items_attributes)
    # raise params.inspect
    items_attributes.each do |item_attributes|
      self.items.build(item_attributes)
    end
  end

end
