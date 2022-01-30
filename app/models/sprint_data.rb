# frozen_string_literal: true

class SprintData < ApplicationRecord
  has_many :sprint_data_columns
  accepts_nested_attributes_for :sprint_data_columns

  def sprint_data_columns
    result = super
    result.sort_by { |sprint_data_column| definition_position(sprint_data_column) }
  end

  private

  def definition_position(sprint_data_column)
    sprint_data_column_definitions.each do |sprint_data_column_definition|
      return sprint_data_column_definition.position if sprint_data_column_definition.name == sprint_data_column.name
    end
  end

  def sprint_data_column_definitions
    @sprint_data_column_definitions ||= SprintDataColumnDefinition.order(:position).all
  end
end
