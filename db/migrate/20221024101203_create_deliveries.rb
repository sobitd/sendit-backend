class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.string :recipient_name
      t.datetime :reception_time

      t.timestamps
    end
  end
end
