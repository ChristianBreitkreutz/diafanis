# frozen_string_literal: true

class Sprint < ApplicationRecord
  encrypts :description, :name, :description
  validates :iteration_id, :name, :description, presence: true
end
