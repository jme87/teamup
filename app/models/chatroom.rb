class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_one :event
end
