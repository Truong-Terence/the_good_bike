class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def cancel
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :user_id, :bike_id, :start_at, :end_at, :total_price)
  end
end
