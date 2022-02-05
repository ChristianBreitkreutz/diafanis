# frozen_string_literal: true

class SetDefaultValuesForSprintDataColumn < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:sprint_data_columns, :ticket_count, false, 0)
    change_column_null(:sprint_data_columns, :story_points, false, 0)
    change_column_default(:sprint_data_columns, :ticket_count, from: nil, to: 0)
    change_column_default(:sprint_data_columns, :story_points, from: nil, to: 0)
  end
end
