class Order < ApplicationRecord
  belongs_to :user
  belongs_to :parcel
  CONSTANT = %w[processed in-transit delivered]
  validates :order_status, inclusion: CONSTANT
end
