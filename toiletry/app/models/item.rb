class Item < ApplicationRecord
  belongs_to :brand
  belongs_to :collection


  # def brand_id=(name)
  #    self.brand_id = Brand.find_or_create_by(id: name)
  # end


  def brands_attributes=(category_attributes)
    brand_attributes.values.each do |brand_attribute|
      brand = Brand.find_or_create_by(brand_attribute)
      self.brands << brand
    end
  end

end

