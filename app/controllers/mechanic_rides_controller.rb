class MechanicRidesController < ApplicationController
  def create
    @mechanic = Mechanic.find_by(name: params[:ride_id])
    @mechanic = Mechanic.find(params[:movie_id])
    MechanicRide.create(mechanic: @mechanic, ride: @ride)
    redirect_to mechanic_path(@mechanic)
  end
end
