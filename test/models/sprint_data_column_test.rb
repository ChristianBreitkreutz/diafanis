# frozen_string_literal: true

require 'test_helper'

class SprintDataColumnTest < ActiveSupport::TestCase
  test 'valid sprint_data_column' do
    s = SprintDataColumn.new(sprint_data_id: 1, name: 'approved', ticket_count: 1, story_points: 1)

    assert s.valid?
  end
  test 'invalid sprint_data_column' do
    s = SprintDataColumn.new

    assert_not s.valid?
  end
end
