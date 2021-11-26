class Owner::BookingsController < ApplicationController
  def index
    @owner_bikes = Bike.all.where(user: current_user)
    @owner_bookings_canceled = []
    @owner_bookings_accepted = []
    @owner_bookings_pending = []
    @owner_bikes.each do |bike|
      bike.bookings.each do |bike_booking|
        @owner_bookings_canceled << bike_booking if bike_booking.status == "Canceled"
        @owner_bookings_accepted << bike_booking if bike_booking.status == "Accepted"
        @owner_bookings_pending << bike_booking if bike_booking.status == "Pending"
      end
    end

  end
end




# <%= @owner_bookings_canceled.size %>
# <%= @owner_bookings_accepted.size %>
# <%= @owner_bookings_pending.size %>
