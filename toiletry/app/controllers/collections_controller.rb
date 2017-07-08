class CollectionsController < ApplicationController
  def index
    @collections = Collection.all 
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = current_user.collections.new(title: params[:collection][:title])
    if @collection.save
      redirect_to collection_path(@collection)
    else
      flash[:error] = "Sorry, please try again."
      redirect_to new_collection_path
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
    @collection = Collection.find(params[:id])
    @collection.destroy
    redirect_to collections_path
  end

  private

  def collection_params
    params.require(:collection).permit(:title, :user_id, items_attributes: [:id, :name, :brand, :cost, :description])
  end
end
