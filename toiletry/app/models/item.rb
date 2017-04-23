class Item < ApplicationRecord
  belongs_to :brand, optional: true
  belongs_to :collection, optional: true


  def brand_name=(name)
    self.brand = Brand.find_or_create_by(name: name)
  end

  def brand_attributes=(brand)
    # binding.pry
    self.brand = Brand.find_or_create_by(name: brand["name"])
    self.brand.update(brand)
    
  end

  def collection_attributes=(collection_attributes)
    raise collection_attributes.inspect
    self.collection = Collection.find_by(id: collection_attributes["id"])
    self.collection.update(collection)
  end

  def collection_name=(title)
    self.collection = Collection.find_or_create_by(title: title)
  end


end

