class RemoveCategoryIdFromParcels < ActiveRecord::Migration[7.0]
  def change
    remove_column :parcels, :category_id, :integer
  end
end
