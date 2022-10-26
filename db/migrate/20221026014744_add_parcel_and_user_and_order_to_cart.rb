class AddParcelAndUserAndOrderToCart < ActiveRecord::Migration[7.0]
  def change
    add_reference :carts, :parcel, null: false, foreign_key: true
    add_reference :carts, :user, null: false, foreign_key: true
    add_reference :carts, :order, null: false, foreign_key: true
  end
end
