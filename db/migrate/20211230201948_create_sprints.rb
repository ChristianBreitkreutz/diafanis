class CreateSprints < ActiveRecord::Migration[7.0]
  def change
    create_table :sprints do |t|
      t.string :iteration_id, null: false
      t.string :name, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
