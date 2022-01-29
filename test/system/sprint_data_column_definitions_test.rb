require "application_system_test_case"

class SprintDataColumnDefinitionsTest < ApplicationSystemTestCase
  setup do
    @sprint_data_column_definition = sprint_data_column_definitions(:one)
  end

  test "visiting the index" do
    visit sprint_data_column_definitions_url
    assert_selector "h1", text: "Sprint data column definitions"
  end

  test "should create sprint data column definition" do
    visit sprint_data_column_definitions_url
    click_on "New sprint data column definition"

    fill_in "Name", with: @sprint_data_column_definition.name
    fill_in "Position", with: @sprint_data_column_definition.position
    click_on "Create Sprint data column definition"

    assert_text "Sprint data column definition was successfully created"
    click_on "Back"
  end

  test "should update Sprint data column definition" do
    visit sprint_data_column_definition_url(@sprint_data_column_definition)
    click_on "Edit this sprint data column definition", match: :first

    fill_in "Name", with: @sprint_data_column_definition.name
    fill_in "Position", with: @sprint_data_column_definition.position
    click_on "Update Sprint data column definition"

    assert_text "Sprint data column definition was successfully updated"
    click_on "Back"
  end

  test "should destroy Sprint data column definition" do
    visit sprint_data_column_definition_url(@sprint_data_column_definition)
    click_on "Destroy this sprint data column definition", match: :first

    assert_text "Sprint data column definition was successfully destroyed"
  end
end
