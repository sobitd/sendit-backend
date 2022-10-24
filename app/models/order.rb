class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :parcel, optional: true
  has_one :bill
  has_many :notifications, :users

  validates :order_status, inclusion: %w[processed in-transit delivered]
  validates :order_status, presence: true
end
