class AddParcelCarrierToDeliveries < ActiveRecord::Migration[7.0]
  def change
    add_reference :deliveries, :parcel_carrier, null: false, foreign_key: true
  end
end
