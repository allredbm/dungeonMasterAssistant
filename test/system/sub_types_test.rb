require "application_system_test_case"

class SubTypesTest < ApplicationSystemTestCase
  setup do
    @sub_type = sub_types(:one)
  end

  test "visiting the index" do
    visit sub_types_url
    assert_selector "h1", text: "Sub Types"
  end

  test "creating a Sub type" do
    visit sub_types_url
    click_on "New Sub Type"

    fill_in "Description", with: @sub_type.description
    fill_in "Monster Type", with: @sub_type.monster_type_id
    fill_in "Name", with: @sub_type.name
    click_on "Create Sub type"

    assert_text "Sub type was successfully created"
    click_on "Back"
  end

  test "updating a Sub type" do
    visit sub_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sub_type.description
    fill_in "Monster Type", with: @sub_type.monster_type_id
    fill_in "Name", with: @sub_type.name
    click_on "Update Sub type"

    assert_text "Sub type was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub type" do
    visit sub_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub type was successfully destroyed"
  end
end
