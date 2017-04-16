class CollectionsController < ApplicationController
  def index
    @collections = Collection.all 
  end

  def new
    @collection = Collection.new
  end

  def create

    @collection = Collection.new(collection_params)
    
    if @collection.save
      # binding.pry
      redirect_to collection_path(@collection)
    else
      render 'new'
    end
  end

  def show
     @collection = Collection.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end


private

def collection_params
  params.require(:collection).permit(:title, :user_id)
end



end
