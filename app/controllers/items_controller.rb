class ItemsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:show, :index]
  skip_after_action :verify_policy_scoped, only: :index
  def index
    # @items = Item.all


    if params[:query].present?
      # @items = Item.where(user: current_user.friends).or(Item.where(user: current_user)).search_all_items(params[:query])
      searched_items = Item.owned_by(current_user).or(Item.owned_by(current_user.friends)).search_all_items(params[:query])
      @items = searched_items.where(user: current_user)
      @friends_items = searched_items.where.not(user: current_user)
    else
      @items = Item.all.where(user: current_user)
    end
  end

  def show
    @item = Item.find(params[:id])
    @related_items = @item.find_related_tags
    authorize @item
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(items_params)
    @item.user = current_user
    authorize @item
    if @item.save
      flash[:notice] = "Please allow a moment for background removal"
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
    authorize @item
  end

  def update
    @item = Item.find(params[:id])
    authorize @item
    @item.update(items_params)
    redirect_to item_path(@item)
  end

  def destroy
    @item = Item.find(params[:id])
    authorize @item
    @item.destroy
    redirect_to user_path(current_user.id)
  end

 private
  def items_params
    params.require(:item).permit(:name, :size, :location, :photo, :category, :tag_list, look_ids: [])
  end

end
