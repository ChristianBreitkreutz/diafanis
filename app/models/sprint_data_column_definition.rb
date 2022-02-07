# frozen_string_literal: true

class SprintDataColumnDefinition < ApplicationRecord
  validates :name, :position, presence: true
  has_one :sprint_data_column, dependent: :destroy

  after_create do
    SprintData.find_each do |sprint_data|
      sprint_data.sprint_data_columns << SprintDataColumn.create!(
        sprint_data_column_definition_id: id
      )
    end
  end
end
