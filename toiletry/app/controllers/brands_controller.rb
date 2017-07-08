class BrandsController < ApplicationController
  def index
    @brands = current_user.brands.all
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def item_params
    params.require(:brand).permit(:name)
  end
end
