class LooksController < ApplicationController
  before_action :set_look, only: [:show]
  skip_after_action :verify_policy_scoped, only: :index

  def index
    @my_looks = Look.all.where(user: current_user)
    @friends_looks = Look.all.where.not(user: current_user)
  end

  def show

  end

  def new
    @look = Look.new
    @items = Item.where(user: current_user)
    authorize @look
  end

  def create
    @look = Look.new(look_params)
    @look.user = current_user
    authorize @look
    if @look.save
      redirect_to user_looks_path(@look)
    else
      render :new
    end
  end

  private

  def look_params
    params.require(:look).permit(:title, item_ids: [])
  end

  def set_look
    @look = Look.find(params[:id])
  end
end
