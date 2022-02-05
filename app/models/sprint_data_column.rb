# frozen_string_literal: true

class SprintDataColumn < ApplicationRecord
  validates :ticket_count, :story_points, presence: true
  belongs_to :sprint_data_column_definition

  def position
    sprint_data_column_definition.position
  end

  def name
    sprint_data_column_definition.name
  end
end
