class Cart < ApplicationRecord
  belongs_to :parcel
  belongs_to :user
  belongs_to :order, optional: true

  validates :kg_charge, :km_charge, numericality: { greater_than: 0 }

  scope :active, -> { where(active: true) }
  scope :other_users, ->(picked_user_id) { where.not(user_id: picked_user_id) }

  def total_cost
    weight_cost = parcel.weight * kg_charge
    distance_cost = (parcel.destination - parcel.from) * km_charge
    total_cost = weight_cost + distance_cost
  end
end
