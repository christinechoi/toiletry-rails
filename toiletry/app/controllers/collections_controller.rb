class CollectionsController < ApplicationController
  def index
    @collections = Collection.all 
  end

  def new
    @collection = Collection.new
    # @item.build_brand
    #@collection.build_item
    # @collection.build.build_brand

  end

  def create
    @item = params[:collection][:item]
    @collection = current_user.collections.create(title: params[:collection][:title])#Collection.new(collection_params)
      # binding.pry
    @brand = Brand.find_or_create_by(name: @item[:brand])
    @collection.items << @brand.items.create(name: @item[:name], collection_id: @item[:collection_id])


    if @collection.save
      # binding.pry
      redirect_to collection_path(@collection)
    else
      # binding.pry
      flash[:error] = "Collection must have a name."
      
      # binding.pry
      redirect_to new_collection_path
    end

  end


  def show
     # binding.pry
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
