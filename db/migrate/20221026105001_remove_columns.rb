class RemoveColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :parcels, :user_id, :integer
  end
end
