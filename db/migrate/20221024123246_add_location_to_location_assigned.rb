class AddLocationToLocationAssigned < ActiveRecord::Migration[7.0]
  def change
    add_reference :location_assigneds, :location, null: false, foreign_key: true
  end
end
