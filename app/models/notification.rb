class Notification < ApplicationRecord
  has_many :orders
  has_many :users
  validates :message, presence: true
end
