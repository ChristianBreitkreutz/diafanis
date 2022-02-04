class AddSprintDataColumnDefinitionToSprintDataColumn < ActiveRecord::Migration[7.0]
  def change
    change_table :sprint_data_columns do |t|
      t.belongs_to :sprint_data_column_definition
    end
    remove_column(:sprint_data_columns, :name, :string)
  end
end
