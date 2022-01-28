# frozen_string_literal: true

require 'application_system_test_case'

class ManHoursTest < ApplicationSystemTestCase
  setup do
    @man_hour = man_hours(:one)
  end

  test 'visiting the index' do
    visit man_hours_url
    assert_selector 'h1', text: 'Man hours'
  end

  test 'should create man hour' do
    visit man_hours_url
    click_on 'New man hour'

    fill_in 'Date', with: @man_hour.date
    fill_in 'Max', with: @man_hour.max
    fill_in 'Planned absences', with: @man_hour.planned_absences
    fill_in 'Unplanned absences', with: @man_hour.unplanned_absences
    click_on 'Create Man hour'

    assert_text 'Man hour was successfully created'
    click_on 'Back'
  end

  test 'should update Man hour' do
    visit man_hour_url(@man_hour)
    click_on 'Edit this man hour', match: :first

    fill_in 'Date', with: @man_hour.date
    fill_in 'Max', with: @man_hour.max
    fill_in 'Planned absences', with: @man_hour.planned_absences
    fill_in 'Unplanned absences', with: @man_hour.unplanned_absences
    click_on 'Update Man hour'

    assert_text 'Man hour was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Man hour' do
    visit man_hour_url(@man_hour)
    click_on 'Destroy this man hour', match: :first

    assert_text 'Man hour was successfully destroyed'
  end
end
