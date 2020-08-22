require "application_system_test_case"

class LovsTest < ApplicationSystemTestCase
  setup do
    @lov = lovs(:one)
  end

  test "visiting the index" do
    visit lovs_url
    assert_selector "h1", text: "Lovs"
  end

  test "creating a Lov" do
    visit lovs_url
    click_on "New Lov"

    fill_in "Column", with: @lov.column
    fill_in "Table", with: @lov.table
    click_on "Create Lov"

    assert_text "Lov was successfully created"
    click_on "Back"
  end

  test "updating a Lov" do
    visit lovs_url
    click_on "Edit", match: :first

    fill_in "Column", with: @lov.column
    fill_in "Table", with: @lov.table
    click_on "Update Lov"

    assert_text "Lov was successfully updated"
    click_on "Back"
  end

  test "destroying a Lov" do
    visit lovs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lov was successfully destroyed"
  end
end
