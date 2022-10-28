class CreateLocationAssigneds < ActiveRecord::Migration[7.0]
  def change
    create_table :location_assigneds do |t|

      t.timestamps
    end
  end
end
