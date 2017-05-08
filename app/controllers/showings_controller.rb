class ShowingsController < ApplicationController

  def new
    @showing = Showing.new
  end

  def create
    @showing = Showing.create(showing_params)
    flash[:success] = "Succesfully logged showing for #{@showing.customer.name}"
    redirect_to new_showing_path
  end

  private

  def showing_params

    params.require(:showing).permit(:customer_id, :property_id, :realtor_id)
  end
end
