class Brand < ApplicationRecord
  has_many :items
  has_many :collections, through: :items

  validates :name, uniqueness: true

  accepts_nested_attributes_for :items, :reject_if => lambda { |a| a[:brand].blank? }, :allow_destroy => true

  # def item_name=(name)
  #    self.item = Item.find_or_create_by(name: name)
  # end
end
