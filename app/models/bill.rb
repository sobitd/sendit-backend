class Bill < ApplicationRecord
  has_one :delivery
  belongs_to :order
  validates :total_cost, presence: true
end
