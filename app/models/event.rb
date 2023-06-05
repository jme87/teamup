class Event < ApplicationRecord
  belongs_to :group, optional: true
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings

  validates :title, presence: true
  validates :description, presence: true

  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :spots_available, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many_attached :photos
end
