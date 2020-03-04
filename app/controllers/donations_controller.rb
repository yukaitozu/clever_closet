class DonationsController < ApplicationController

  def index
    @donations = policy_scope(Donation)
  end

  def new
    @item = Item.find(params[:item_id])
    @donation = Donation.new
    @donation.item = @item
    authorize @donation
  end

  def create
    @item = Item.find(params[:item_id])
    @donation = Donation.new(donation_params)
    @donation.user = current_user
    @donation.item = @item
    authorize @donation
    @donation.item.update(donated: true)
    if @donation.save
      redirect_to user_donations_path(@donation.user.id)
    else
      render :new
    end
    
  end

  private

  def donation_params
    params.require(:donation).permit(:pick_up_date, :address, :full_name)
  end
end
