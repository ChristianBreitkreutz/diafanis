# frozen_string_literal: true

require 'test_helper'

class SprintDataColumnDefinitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sprint_data_column_definition = sprint_data_column_definitions(:one)
  end

  test 'should get index' do
    get sprint_data_column_definitions_url
    assert_response :success
  end

  test 'should get new' do
    get new_sprint_data_column_definition_url
    assert_response :success
  end

  test 'should create sprint_data_column_definition' do
    assert_difference('SprintDataColumnDefinition.count') do
      post sprint_data_column_definitions_url,
           params: { sprint_data_column_definitions: { name: @sprint_data_column_definition.name,
                                                       position: @sprint_data_column_definition.position } }
    end

    assert_redirected_to sprint_data_column_definition_url(SprintDataColumnDefinition.last)
  end

  test 'should show sprint_data_column_definition' do
    get sprint_data_column_definition_url(@sprint_data_column_definition)
    assert_response :success
  end

  test 'should get edit' do
    get edit_sprint_data_column_definition_url(@sprint_data_column_definition)
    assert_response :success
  end

  test 'should update sprint_data_column_definition' do
    patch sprint_data_column_definition_url(@sprint_data_column_definition),
          params: { sprint_data_column_definitions: { name: @sprint_data_column_definition.name,
                                                      position: @sprint_data_column_definition.position } }
    assert_redirected_to sprint_data_column_definition_url(@sprint_data_column_definition)
  end

  test 'should destroy sprint_data_column_definition' do
    assert_difference('SprintDataColumnDefinition.count', -1) do
      delete sprint_data_column_definition_url(@sprint_data_column_definition)
    end

    assert_redirected_to sprint_data_column_definitions_url
  end
end
