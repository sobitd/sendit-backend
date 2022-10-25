class Parcel < ApplicationRecord
  validates :recipient_name, :recipient_contact, :weight, :from, :destination, :recipient_address, presence: true
  has_many :orders
  has_many :users, through: :orders
end
