class Item < ApplicationRecord
  belongs_to :brand, optional: true
  belongs_to :collection, optional: true

# ---

#   def item_name=(name)
#      self.items << Item.find_or_create_by(name: name)
#   end

#   def items_attributes=(items_attributes)
#     # raise params.inspect
#     items_attributes.each do |item_attributes|
#       self.items.build(item_attributes)
#     end
#   end


#   def brand_attributes=(brands)
    
#     raise brands.inspect
#     self.brand = Brands.find_or_create_by(name: brands[:name])
#     self.brand.update(brands)
    
#   # end
# end


#This below is called whenever an Item is initialized with a 
# brand_name field

  #def brand_name=(name)
    #raise name.inspect 
    #self.brand = Brand.find_or_create_by(name: name)
  #end


  def brand_attributes=(brand_attributes)
    # binding.pry# raise brand_attributes.inspect bindin
    brand = Brand.find_or_create_by(name: brand_attributes[:name])
    brand.items << self unless brand.items.include?(self)
    
  end

  # def adventure_attributes=(adventure_attributes)
  #   if adventure_id != nil
  #     adventure = Adventure.find_or_create_by(adventure_attributes)
  #     adventure.treks << self
  #   end
  # end

  # def collection_attributes=(collection_attributes)
  #   raise collection_attributes.inspect
  #   self.collection = Collection.find_by(id: collection_attributes["id"])
  #   self.collection.update(collection)
  # end

  # def collection_name=(title)
  #   self.collection = Collection.find_or_create_by(title: title)
  # end


end

