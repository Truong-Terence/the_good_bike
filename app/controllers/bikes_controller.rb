class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @bikes = Bike.all

    # GEOBOX MAP & MARKERS
    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bike: bike })
      }
    end

    # SEARCH FORM
    if params[:query].present?
      sql_query = "name ILIKE :query OR address ILIKE :query OR kind ILIKE :query"
      @bikes = Bike.where(sql_query, query: "%#{params[:query]}%")
    else
      @bikes = Bike.all
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
