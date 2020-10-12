require "application_system_test_case"

class Masters::ProfilesTest < ApplicationSystemTestCase
  setup do
    @masters_profile = masters_profiles(:one)
  end

  test "visiting the index" do
    visit masters_profiles_url
    assert_selector "h1", text: "Masters/Profiles"
  end

  test "creating a Profile" do
    visit masters_profiles_url
    click_on "New Masters/Profile"

    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit masters_profiles_url
    click_on "Edit", match: :first

    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit masters_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
