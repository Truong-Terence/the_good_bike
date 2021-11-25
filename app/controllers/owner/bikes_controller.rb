class Owner::BikesController < ApplicationController
  def index
    @owner_bikes = current_user.bikes.all
    @owner_bike = Bike.new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
