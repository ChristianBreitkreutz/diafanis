require 'test_helper'

class SprintDataTest < ActiveSupport::TestCase
  test 'valid sprint_data_column' do
    sprint_data = SprintData.new(date: Time.current)
    SprintDataColumn.create!(sprint_data_id: sprint_data.id, name: 'approved', ticket_count: 1, story_points: 1)

    assert sprint_data.valid?
  end
  test 'get data from ' do
    sprint_data = SprintData.create!(date: Time.current)
    SprintDataColumn.create!(sprint_data_id: sprint_data.id, name: 'approved', ticket_count: 1, story_points: 1)
    pp sprint_data.sprint_data_columns
    assert sprint_data.sprint_data_columns.present?
  end
end