class Order < ApplicationRecord
  has_many :carts 
  has_one :user, through: :cart

  validates :order_status, inclusion: %w[processed in-transit delivered]
  validates :order_status, presence: true
end
