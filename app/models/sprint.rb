class Sprint < ApplicationRecord
  validates_presence_of :iteration_id, :name, :description
end
