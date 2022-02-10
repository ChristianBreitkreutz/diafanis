class AddBelongsToToSprintData < ActiveRecord::Migration[7.0]
  def change
    add_reference :sprint_data, :sprint, foreign_key: true
    #change_column_null :sprint_data, :sprint_id, false
  end
end
