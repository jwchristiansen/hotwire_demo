require "application_system_test_case"

class roomsTest < ApplicationSystemTestCase
  setup do
    @room = rooms(:one)
  end

  test "visiting the index" do
    visit rooms_url
    assert_selector "h1", text: "rooms"
  end

  test "creating a room" do
    visit rooms_url
    click_on "New room"

    fill_in "Name", with: @room.name
    click_on "Create room"

    assert_text "room was successfully created"
    click_on "Back"
  end

  test "updating a room" do
    visit rooms_url
    click_on "Edit", match: :first

    fill_in "Name", with: @room.name
    click_on "Update room"

    assert_text "room was successfully updated"
    click_on "Back"
  end

  test "destroying a room" do
    visit rooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "room was successfully destroyed"
  end
end
