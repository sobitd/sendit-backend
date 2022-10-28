class DropBillsTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :bills
  end

  def down 
    raise ActiveRecord::IrreversibleMigration
  end
end
