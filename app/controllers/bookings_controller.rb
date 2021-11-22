class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    # @booking = Booking.new(booking_params)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def cancel
  end

  private

  def booking_params
    # params.require(:booking).permit(:status, :user_id, :bike_id, :start_at, :end_at, :total_price)
  end
end
