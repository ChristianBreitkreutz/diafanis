require "test_helper"

class ManHoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @man_hour = man_hours(:one)
  end

  test "should get index" do
    get man_hours_url
    assert_response :success
  end

  test "should get new" do
    get new_man_hour_url
    assert_response :success
  end

  test "should create man_hour" do
    assert_difference("ManHour.count") do
      post man_hours_url, params: { man_hour: { date: @man_hour.date, max: @man_hour.max, planned_absences: @man_hour.planned_absences, unplanned_absences: @man_hour.unplanned_absences } }
    end

    assert_redirected_to man_hour_url(ManHour.last)
  end

  test "should show man_hour" do
    get man_hour_url(@man_hour)
    assert_response :success
  end

  test "should get edit" do
    get edit_man_hour_url(@man_hour)
    assert_response :success
  end

  test "should update man_hour" do
    patch man_hour_url(@man_hour), params: { man_hour: { date: @man_hour.date, max: @man_hour.max, planned_absences: @man_hour.planned_absences, unplanned_absences: @man_hour.unplanned_absences } }
    assert_redirected_to man_hour_url(@man_hour)
  end

  test "should destroy man_hour" do
    assert_difference("ManHour.count", -1) do
      delete man_hour_url(@man_hour)
    end

    assert_redirected_to man_hours_url
  end
end
