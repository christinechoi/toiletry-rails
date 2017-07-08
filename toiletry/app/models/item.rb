class Item < ApplicationRecord
  # belongs_to :brand, optional: true
  belongs_to :collection, optional: true
  belongs_to :user

  validates :brand, presence: true
  validates :name, presence: true# 
  # validates_presence_of :collection, :user

  def self.by_brand(brand)
    where(brand: brand)
  end

   def self.by_collection(collection_id)
    where(collection: collection_id)
  end



end

