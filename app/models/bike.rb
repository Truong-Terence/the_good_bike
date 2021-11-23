class Bike < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  belongs_to :user
end
