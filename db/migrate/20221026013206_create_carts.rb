class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.integer :kg_charge
      t.integer :km_charge
      t.boolean :active

      t.timestamps
    end
  end
end
