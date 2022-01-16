# frozen_string_literal: true

require 'test_helper'

class SprintsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get sprints_index_url
    assert_response :success
  end
end
