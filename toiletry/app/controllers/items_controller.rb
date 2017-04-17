class ItemsController < ApplicationController
 
  def new
    @item = Item.new


  end

  def index
    @item = Item.all
  end

  def create
    @item = Item.new(item_params)
    @item.save
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def item_params
    params.require(:item).permit(:name, :description, :quantity, :brand_ids =>[])
  end


end
