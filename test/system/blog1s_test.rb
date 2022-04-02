require "application_system_test_case"

class Blog1sTest < ApplicationSystemTestCase
  setup do
    @blog1 = blog1s(:one)
  end

  test "visiting the index" do
    visit blog1s_url
    assert_selector "h1", text: "Blog1s"
  end

  test "should create blog1" do
    visit blog1s_url
    click_on "New blog1"

    fill_in "Email", with: @blog1.email
    fill_in "First name", with: @blog1.first_name
    fill_in "Last name", with: @blog1.last_name
    fill_in "Phone", with: @blog1.phone
    fill_in "Twitter", with: @blog1.twitter
    click_on "Create Blog1"

    assert_text "Blog1 was successfully created"
    click_on "Back"
  end

  test "should update Blog1" do
    visit blog1_url(@blog1)
    click_on "Edit this blog1", match: :first

    fill_in "Email", with: @blog1.email
    fill_in "First name", with: @blog1.first_name
    fill_in "Last name", with: @blog1.last_name
    fill_in "Phone", with: @blog1.phone
    fill_in "Twitter", with: @blog1.twitter
    click_on "Update Blog1"

    assert_text "Blog1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Blog1" do
    visit blog1_url(@blog1)
    click_on "Destroy this blog1", match: :first

    assert_text "Blog1 was successfully destroyed"
  end
end
