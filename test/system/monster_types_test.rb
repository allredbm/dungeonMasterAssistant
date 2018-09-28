require "application_system_test_case"

class MonsterTypesTest < ApplicationSystemTestCase
  setup do
    @monster_type = monster_types(:one)
  end

  test "visiting the index" do
    visit monster_types_url
    assert_selector "h1", text: "Monster Types"
  end

  test "creating a Monster type" do
    visit monster_types_url
    click_on "New Monster Type"

    fill_in "Description", with: @monster_type.description
    fill_in "Name", with: @monster_type.name
    click_on "Create Monster type"

    assert_text "Monster type was successfully created"
    click_on "Back"
  end

  test "updating a Monster type" do
    visit monster_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @monster_type.description
    fill_in "Name", with: @monster_type.name
    click_on "Update Monster type"

    assert_text "Monster type was successfully updated"
    click_on "Back"
  end

  test "destroying a Monster type" do
    visit monster_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monster type was successfully destroyed"
  end
end
