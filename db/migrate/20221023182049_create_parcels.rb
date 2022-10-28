class CreateParcels < ActiveRecord::Migration[7.0]
  def change
    create_table :parcels do |t|
      t.string :recipient_address
      t.string :recipient_name
      t.string :recipient_contact
      t.integer :weight
      t.string :from
      t.string :destination

      t.timestamps
    end
  end
end
