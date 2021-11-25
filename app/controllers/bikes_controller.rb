class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @bikes = Bike.all

    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bike: bike })
      }
    end
  end

  def show
    @bike = Bike.find(params[:id])

    @markers = [
      {
        lat: @bike.latitude,
        lng: @bike.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bike: @bike })
      }
    ]
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    @bike.save!
    redirect_to owner_bikes_path
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :description, :address, :size, :kind, :price_per_day, photos: [])
  end
end
