require "application_system_test_case"

class MonstersTest < ApplicationSystemTestCase
  setup do
    @monster = monsters(:one)
  end

  test "visiting the index" do
    visit monsters_url
    assert_selector "h1", text: "Monsters"
  end

  test "creating a Monster" do
    visit monsters_url
    click_on "New Monster"

    fill_in "Armor Class", with: @monster.armor_class
    fill_in "Book", with: @monster.book_id
    fill_in "Challenge", with: @monster.challenge
    fill_in "Description", with: @monster.description
    fill_in "Hit Points", with: @monster.hit_points
    fill_in "Monster Type", with: @monster.monster_type_id
    fill_in "Name", with: @monster.name
    fill_in "Page", with: @monster.page
    fill_in "Sub Type", with: @monster.sub_type_id
    click_on "Create Monster"

    assert_text "Monster was successfully created"
    click_on "Back"
  end

  test "updating a Monster" do
    visit monsters_url
    click_on "Edit", match: :first

    fill_in "Armor Class", with: @monster.armor_class
    fill_in "Book", with: @monster.book_id
    fill_in "Challenge", with: @monster.challenge
    fill_in "Description", with: @monster.description
    fill_in "Hit Points", with: @monster.hit_points
    fill_in "Monster Type", with: @monster.monster_type_id
    fill_in "Name", with: @monster.name
    fill_in "Page", with: @monster.page
    fill_in "Sub Type", with: @monster.sub_type_id
    click_on "Update Monster"

    assert_text "Monster was successfully updated"
    click_on "Back"
  end

  test "destroying a Monster" do
    visit monsters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monster was successfully destroyed"
  end
end
