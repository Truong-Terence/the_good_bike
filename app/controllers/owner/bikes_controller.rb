class Owner::BikesController < ApplicationController
  def index
    @owner_bikes = current_user.bikes.all
    @owner_bike = Bike.new
  end

  def create
    @owner_bike = Bike.new(bike_params)
    @owner_bike.user = current_user
    @owner_bike.save!
    redirect_to owner_bikes_path(@owner_bike)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :description, :address, :size, :kind, :price_per_day, :photos)
  end
end
