class Bike < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  belongs_to :user

  KIND = ["Mountain bike", "Electric", "Electric mountain bike", "Road bike", "Dutch bike", "BMX"]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :kind, inclusion: { in: KIND }, presence: true
  validates :name, :description, :address, :price_per_day, :size, presence: true
end
