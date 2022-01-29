class CreateSprintDataColumnDefinitions < ActiveRecord::Migration[7.0]
  def change
    create_table :sprint_data_column_definitions do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
