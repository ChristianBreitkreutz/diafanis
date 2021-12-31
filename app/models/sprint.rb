# frozen_string_literal: true

class Sprint < ApplicationRecord
  encrypts :description, :name, :description
  validates_presence_of :iteration_id, :name, :description
end
