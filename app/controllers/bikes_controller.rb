class BikesController < ApplicationController
  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def create
    @owner_bike = Bike.new(bike_params)
    @owner_bike.user = current_user
    @owner_bike.save!
    redirect_to owner_bikes_path
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :description, :address, :size, :kind, :price_per_day, :photos)
  end
end
