class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @items = Item.all
    @items = policy_scope(Item)

    if params[:query].present?
      @items = Item.search_by_name_and_size(params[:query])
    end
  end

  def show
    @item = Item.find(params[:id])
    authorize @item
  end
end
