class DonationsController < ApplicationController

  def new
    @item = Item.find(params[:item_id])
    @donation = Donation.new
    authorize @donation

  end

  def create

  end
end
