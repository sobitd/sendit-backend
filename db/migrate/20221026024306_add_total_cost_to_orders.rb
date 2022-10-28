class AddTotalCostToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :total_cost, :integer
  end
end
