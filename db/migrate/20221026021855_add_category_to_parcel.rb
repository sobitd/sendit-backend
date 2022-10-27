class AddCategoryToParcel < ActiveRecord::Migration[7.0]
  def change
    add_reference :parcels, :category, null: false, foreign_key: true
  end
end
