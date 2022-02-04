# frozen_string_literal: true

class SprintData < ApplicationRecord
  has_many :sprint_data_columns

  accepts_nested_attributes_for :sprint_data_columns

  def sprint_data_columns_sorted
    SprintDataColumn.joins(:sprint_data_column_definition).order("sprint_data_column_definitions.position").all
  end

end
