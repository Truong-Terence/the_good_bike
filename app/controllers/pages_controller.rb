class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @bikes = Bike.all

    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude
      }
    end
  end
end
