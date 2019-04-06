require "application_system_test_case"

class ReservedsTest < ApplicationSystemTestCase
  setup do
    @reserved = reserveds(:one)
  end

  test "visiting the index" do
    visit reserveds_url
    assert_selector "h1", text: "Reserveds"
  end

  test "creating a Reserved" do
    visit reserveds_url
    click_on "New Reserved"

    fill_in "Ktp", with: @reserved.KTP
    fill_in "Address", with: @reserved.address
    fill_in "Email", with: @reserved.email
    fill_in "Name", with: @reserved.name
    fill_in "Pax", with: @reserved.pax
    fill_in "Title", with: @reserved.title
    click_on "Create Reserved"

    assert_text "Reserved was successfully created"
    click_on "Back"
  end

  test "updating a Reserved" do
    visit reserveds_url
    click_on "Edit", match: :first

    fill_in "Ktp", with: @reserved.KTP
    fill_in "Address", with: @reserved.address
    fill_in "Email", with: @reserved.email
    fill_in "Name", with: @reserved.name
    fill_in "Pax", with: @reserved.pax
    fill_in "Title", with: @reserved.title
    click_on "Update Reserved"

    assert_text "Reserved was successfully updated"
    click_on "Back"
  end

  test "destroying a Reserved" do
    visit reserveds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reserved was successfully destroyed"
  end
end
