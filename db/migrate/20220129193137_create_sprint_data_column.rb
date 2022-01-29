class CreateSprintDataColumn < ActiveRecord::Migration[7.0]
  def change
    create_table :sprint_data_columns do |t|
      t.belongs_to :sprint_data
      t.string :name, null: false
      t.integer :ticket_count, null: false
      t.integer :story_points, null: false

      t.timestamps
    end
  end
end
