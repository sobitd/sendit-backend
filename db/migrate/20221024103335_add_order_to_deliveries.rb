class AddOrderToDeliveries < ActiveRecord::Migration[7.0]
  def change
    add_reference :deliveries, :order, null: false, foreign_key: true
  end
end
