class Bike < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  belongs_to :user

  # include AlgoliaSearch

  # searchkick

  # include PgSearch::Model
  # pg_search_scope :global_search, against: [
  #   [:address, 'A'],
  #   [:name, 'B'],
  #   [:kind, 'C']
  # ], using: {
  #   tsearch: { prefix: true }
  # }

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description, :address ],
    using: {
      tsearch: { prefix: true }
    }

  KIND = ["Mountain bike", "Electric", "Electric mountain bike", "Road bike", "Dutch bike", "BMX"]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :kind, inclusion: { in: KIND }, presence: true
  validates :name, :description, :address, :price_per_day, :size, presence: true
end
