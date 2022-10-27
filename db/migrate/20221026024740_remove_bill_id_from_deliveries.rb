class RemoveBillIdFromDeliveries < ActiveRecord::Migration[7.0]
  def change
    remove_column :deliveries, :bill_id, :integer
  end
end
