class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :user_groups
  has_many :events, through: :bookings
  has_many :groups, through: :user_groups
  has_many :posts

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :nickname, presence: true, uniqueness: true
  validates :city, presence: true
  validates :photo, presence: true

  has_one_attached :photo
end
