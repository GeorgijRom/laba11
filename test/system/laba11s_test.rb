require "application_system_test_case"

class Laba11sTest < ApplicationSystemTestCase
  setup do
    @laba11 = laba11s(:one)
  end

  test "visiting the index" do
    visit laba11s_url
    assert_selector "h1", text: "Laba11s"
  end

  test "creating a Laba11" do
    visit laba11s_url
    click_on "New Laba11"

    click_on "Create Laba11"

    assert_text "Laba11 was successfully created"
    click_on "Back"
  end

  test "updating a Laba11" do
    visit laba11s_url
    click_on "Edit", match: :first

    click_on "Update Laba11"

    assert_text "Laba11 was successfully updated"
    click_on "Back"
  end

  test "destroying a Laba11" do
    visit laba11s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Laba11 was successfully destroyed"
  end
end
