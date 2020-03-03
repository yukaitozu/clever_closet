class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  
  def index
    @items = Item.all
    authorize @items
  end

  def show
    @items = Item.find(params[:id])
    authorize @item
  end
end
