class BikesController < ApplicationController
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
  end
end
