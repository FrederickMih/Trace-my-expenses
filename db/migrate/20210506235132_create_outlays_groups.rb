class CreateOutlaysGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :outlays_groups do |t|
      t.references :group, null: false, foreign_key: true
      t.references :outlay, null: false, foreign_key: true

      t.timestamps
    end
  end
end
