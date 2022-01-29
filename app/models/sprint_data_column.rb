# frozen_string_literal: true

class SprintDataColumn < ApplicationRecord
  validates :ticket_count, :story_points, presence: true
end
