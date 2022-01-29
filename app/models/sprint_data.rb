# frozen_string_literal: true

class SprintData < ApplicationRecord
  has_many :sprint_data_columns
  accepts_nested_attributes_for :sprint_data_columns
end