class PagesController < ApplicationController
  # CITIES = [paris, lyon, marseille, nantes, bordeaux, montpellier, lille]
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

  private

  def random_position
    CITIES.sample(random: Random.new(1))
  end
end
