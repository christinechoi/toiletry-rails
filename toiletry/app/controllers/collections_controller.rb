class CollectionsController < ApplicationController
  def index
    @collections = Collection.all 
  end

  def new
    @collection = Collection.new
    # @item.build_brand
    @collection.build_item
    @collection.build.build_brand

  end

  def create
    items = params[:collection][:items]
    @collection = current_user.collection.create(name: params[:collection][:name])#Collection.new(collection_params)
      
    items.each do |item|
      brand = Brand.find_or_create_by(name: item.brand.name)
      @collection.items << brand.items.create(name: item.name, collection_id: item.collection_id)
    end

    if @collection.save
      binding.pry
      redirect_to collection_path(@collection)
    else
      binding.pry
      render 'new'
      redirect_to collections_path
    end

  end


  def show
     @collection = Collection.find(params[:id])
     @collection_items = Array.new 
     @collection_items += @collection.items 

  end

  def edit
  end

  def update
  end

  def destroy
  end




private

def collection_params
  params.require(:collection).permit(:title, :user_id, item_attributes: [:id, :name, :quantity, :description])
end



end
