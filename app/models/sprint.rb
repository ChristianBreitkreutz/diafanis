# frozen_string_literal: true

class Sprint < ApplicationRecord
  validates :iteration_id, :name, :description, :member_data, :start_time, :end_time, presence: true
  encrypts :description, :name, :iteration_id, deterministic: true
end
