class ItemsController < ApplicationController
  # validates :name, presence: true


  def index
    @items = current_user.items
  end

  def new
    @item = Item.new
    # binding.pry
    @item.build_brand
    # @item.build_collection
  end


  def index

    if params[:collection_id]
      @items = Collection.find(params[:collection_id]).items
    else
      @items = Item.all
    end

  end

  def create
    # raise params.inspect #when creating new brand, where does that get created?
    # @item = Item.create(item_params)
    binding.pry
    @item = current_user.items.build(item_params)
    # @item.brand = Brand.find_or_create_by(name: params[:item][:brands])
   

    # @item = current_user.items.create(name: )
    # @item_brand = Brand.find_or_create_by(name: @brand[:name])
    
    # @brand_id = params[:item][:brand_id] #selecting existing brand
    # @brand = Brand.find_by(name: params[:item][:brand])
    # raise params.inspect 
#i think the new brand, if one was made, needs to be created here. 
# @brand = Brand.find_or_create_by(name: params[:item][:brand][:name])

#but. datalist and new brand are different params. how to handle this?

    
    if @item.save
      # binding.pry
      redirect_to collection_path(@item.collection_id)
    else
      flash[:error] = "Item must have a brand."
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
    @collection = @item.collection_id
  end

  def edit
    # @collection = Collection.find(params[:collection_id])
    @item = Item.find(params[:id])
    # binding.pry
  end

  def update
    binding.pry
    @item = Item.find(params[:id])
    binding.pry
    @item.update(item_params)
    binding.pry
    redirect_to collection_item_path(@item)

 # @post = Post.find(params[:id])
 #  @post.update(title: params[:title], description: params[:description])
 #  redirect_to post_path(@post)

    

  end



  def destroy
    # # Person.find(params[:id]).destroy
    # redirect_to people_url
    @item = Item.find(params[:id])
    @item.destroy
    @collection_id = @item.collection_id
    redirect_to collection_path(@collection_id)
    # if @item
    #   @item.delete
    #   redirect_to collection_path(@collection_id)
    # else




    #  @list = ListItem.find(params[:id]).list
    # ListItem.find(params[:id]).delete
    # redirect_to @list

  end


  private

  def item_params
    params.require(:item).permit(:brand_id, :collection_id, :name, :description, :quantity, brand_attributes: [:id, :name]) #brand_attributes: )#brand_attributes: [:id, :name], collection_attributes: [:id, :title]
  end


end
