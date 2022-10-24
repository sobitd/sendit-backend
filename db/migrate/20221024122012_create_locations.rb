class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :street_address
      t.string :latitude
      t.string :longitude
      t.string :city

      t.timestamps
    end
  end
end
