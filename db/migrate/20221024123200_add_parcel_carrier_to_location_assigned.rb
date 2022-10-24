class AddParcelCarrierToLocationAssigned < ActiveRecord::Migration[7.0]
  def change
    add_reference :location_assigneds, :parcel_carrier, null: false, foreign_key: true
  end
end
