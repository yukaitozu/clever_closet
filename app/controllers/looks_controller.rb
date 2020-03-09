class LooksController < ApplicationController
  before_action :set_look, only: [:show, :edit, :update, :destroy]
  skip_after_action :verify_policy_scoped, only: :index

  def index
    @my_looks = current_user.my_looks
    @friends_looks = current_user.friends_looks
  end

  def show
    authorize @look
  end

  def new
    @user = params[:user_id] ? User.find(params[:user_id]) : current_user
    @look = Look.new
    @items = Item.where(user: current_user)
    authorize @look
  end

  def create
    @look = Look.new(look_params)
    @look.user = User.find(params[:user_id]) || current_user
    authorize @look
    if @look.save
      redirect_to edit_look_path(@look)
    else
      render :new
    end
  end

  def edit
    authorize @look
  end

  def update
    # removes all previously selected items
    @look.items = []
    # shovel new selected items into items array
    @look.items << params[:look][:item_ids].reject{ |item_id| item_id == "" }.map { |item_id| Item.find(item_id)}
    authorize @look
    if @look.save
      redirect_to look_path(@look)
    else
      render :edit
    end
  end

  def destroy
    @look.destroy
    authorize @look
    redirect_to user_path(current_user)
  end

  private

  def look_params
    params.require(:look).permit(:title, items: [:id])
  end

  def set_look
    @look = Look.find(params[:id])
  end
end
