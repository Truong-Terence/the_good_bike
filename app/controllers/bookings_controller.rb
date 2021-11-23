class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @bike = Bike.find(params[:bike_id])
    @booking.bike = @bike
    @booking.user = current_user
    @booking.save!

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def cancel
  end

  private

  def booking_params
    params.require(:booking).permit(:bike_id, :start_at, :end_at)
  end
end
