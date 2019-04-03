require "application_system_test_case"

class BookdetailsTest < ApplicationSystemTestCase
  setup do
    @bookdetail = bookdetails(:one)
  end

  test "visiting the index" do
    visit bookdetails_url
    assert_selector "h1", text: "Bookdetails"
  end

  test "creating a Bookdetail" do
    visit bookdetails_url
    click_on "New Bookdetail"

    fill_in "Amount", with: @bookdetail.amount
    fill_in "Email", with: @bookdetail.email
    fill_in "Name", with: @bookdetail.name
    click_on "Create Bookdetail"

    assert_text "Bookdetail was successfully created"
    click_on "Back"
  end

  test "updating a Bookdetail" do
    visit bookdetails_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @bookdetail.amount
    fill_in "Email", with: @bookdetail.email
    fill_in "Name", with: @bookdetail.name
    click_on "Update Bookdetail"

    assert_text "Bookdetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookdetail" do
    visit bookdetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookdetail was successfully destroyed"
  end
end
