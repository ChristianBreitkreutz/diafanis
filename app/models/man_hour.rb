class ManHour < ApplicationRecord
  validates :date, :max, :planned_absences, :unplanned_absences, presence:true
end
