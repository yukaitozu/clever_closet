class ItemsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:show, :index]
skip_after_action :verify_policy_scoped, only: :index
  def index
    # @items = Item.all
    @items = Item.all.where(user: current_user)

    if params[:query].present?
      # @items = Item.where(user: current_user.friends).or(Item.where(user: current_user)).search_all_items(params[:query])
      @items = Item.owned_by(current_user).or(Item.owned_by(current_user.friends)).search_all_items(params[:query])
    end

  end

  def show
    @item = Item.find(params[:id])
    authorize @item
  end
end
