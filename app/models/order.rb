class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :parcel, optional: true

  validates :order_status, inclusion: %w[processed in-transit delivered]
  validates :order_status, presence: true
end
