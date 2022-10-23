class Parcel < ApplicationRecord
  validates :recipient_name, :recipient_contact, :weight, :from, :destination, :recipient_address, presence: true
end
