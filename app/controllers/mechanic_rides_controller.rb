class MechanicRidesController < ApplicationController
  def create
    @mechanic = Mechanic.find_by(name: params[:ride_name])
    @mechanic = Mechanic.find(params[:mechanic_id])
    MechanicRide.create(mechanic: @mechanic, ride: @ride)
    redirect_to mechanic_path(@mechanic)
  end
end
