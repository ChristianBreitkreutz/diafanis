# frozen_string_literal: true

class SprintDataColumn < ApplicationRecord
  validates :ticket_count, :story_points, presence: true
  belongs_to :sprint_data_column_definition

  delegate :position, to: :sprint_data_column_definition

  delegate :name, to: :sprint_data_column_definition
end
