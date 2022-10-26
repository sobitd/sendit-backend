class Parcel < ApplicationRecord
  belongs_to :user
  belongs_to :order, optional: true
  has_one :cart
  validates :recipient_name, :recipient_contact, :weight, :from, :destination, :recipient_address, presence: true
end
