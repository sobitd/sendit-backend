class RemoveParcelIdFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :parcel_id, :integer
  end
end
