class Owner::BikesController < ApplicationController
  def index
    @owner_bikes = current_user.bikes.all
    @owner_bike = Bike.new
  end
end
