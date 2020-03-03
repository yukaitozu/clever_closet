class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @items = Item.all
    @items = policy_scope(Item)
  end

  def show
    @item = Item.find(params[:id])
    authorize @item
  end
end
