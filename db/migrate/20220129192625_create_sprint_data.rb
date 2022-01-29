class CreateSprintData < ActiveRecord::Migration[7.0]
  def change
    create_table :sprint_data do |t|
      t.datetime :date, null: false

      t.timestamps
    end
  end
end
