class CreateManHours < ActiveRecord::Migration[7.0]
  def change
    create_table :man_hours do |t|
      t.datetime :date, null: false
      t.integer :max, null: false
      t.integer :planned_absences, null: false
      t.integer :unplanned_absences, null: false

      t.timestamps
    end
  end
end
