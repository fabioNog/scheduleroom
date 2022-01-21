require "application_system_test_case"

class ReservesTest < ApplicationSystemTestCase
  setup do
    @reserf = reserves(:one)
  end

  test "visiting the index" do
    visit reserves_url
    assert_selector "h1", text: "Reserves"
  end

  test "should create reserve" do
    visit reserves_url
    click_on "New reserve"

    fill_in "Name", with: @reserf.name
    fill_in "Start date", with: @reserf.start_date
    fill_in "Termination date", with: @reserf.termination_date
    click_on "Create Reserve"

    assert_text "Reserve was successfully created"
    click_on "Back"
  end

  test "should update Reserve" do
    visit reserf_url(@reserf)
    click_on "Edit this reserve", match: :first

    fill_in "Name", with: @reserf.name
    fill_in "Start date", with: @reserf.start_date
    fill_in "Termination date", with: @reserf.termination_date
    click_on "Update Reserve"

    assert_text "Reserve was successfully updated"
    click_on "Back"
  end

  test "should destroy Reserve" do
    visit reserf_url(@reserf)
    click_on "Destroy this reserve", match: :first

    assert_text "Reserve was successfully destroyed"
  end
end
