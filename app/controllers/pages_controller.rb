class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @bikes = Bike.all

    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bike: bike }),
        image_url: helpers.asset_url('marker.png')
      }
    end
  end
end
