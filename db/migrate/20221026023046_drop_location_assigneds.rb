class DropLocationAssigneds < ActiveRecord::Migration[7.0]
  def up
    drop_table :location_assigneds
  end

  def down 
    raise ActiveRecord::IrreversibleMigration
  end
end
