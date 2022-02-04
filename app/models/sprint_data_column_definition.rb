# frozen_string_literal: true

class SprintDataColumnDefinition < ApplicationRecord
  validates :name, :position, presence: true
  has_one :sprint_data_column, dependent: :destroy
end
