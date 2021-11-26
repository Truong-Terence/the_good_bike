class BookingsController < ApplicationController
  def index
    @bookings = Booking.all.where(user: current_user)

    @bookings_accepted = @bookings.where(status: "Accepted")
    @bookings_pending = @bookings.where(status: "Pending")
    @bookings_canceled = @bookings.where(status: "Canceled")
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

    redirect_to bookings_path
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def patch
    @booking = Booking.find(params[:id])
    @booking.status = "Canceled"
    @booking.save!
    redirect_to bookings_path
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:booking][:status]
    @booking.save!
    redirect_to owner_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:bike_id, :start_at, :end_at, :status)
  end
end
