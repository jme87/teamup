class Event < ApplicationRecord

  belongs_to :group, optional: true
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings, dependent: :destroy
  has_one :chatroom
  has_many_attached :photos

  validates :title, presence: true
  validates :description, presence: true

  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :level, presence: true, inclusion: { in: LEVEL }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :spots_available, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # def city(event)
  #   event.address.split(" ")[-2].gsub(',', '')
  # end

  def spots_left(event)
    event.spots_available - event.bookings.count
  end
end
