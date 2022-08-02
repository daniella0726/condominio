require "application_system_test_case"

class PqrsTest < ApplicationSystemTestCase
  setup do
    @pqr = pqrs(:one)
  end

  test "visiting the index" do
    visit pqrs_url
    assert_selector "h1", text: "Pqrs"
  end

  test "should create pqr" do
    visit pqrs_url
    click_on "New pqr"

    fill_in "Descripcion", with: @pqr.descripcion
    fill_in "Tipo", with: @pqr.tipo
    fill_in "User", with: @pqr.user_id
    click_on "Create Pqr"

    assert_text "Pqr was successfully created"
    click_on "Back"
  end

  test "should update Pqr" do
    visit pqr_url(@pqr)
    click_on "Edit this pqr", match: :first

    fill_in "Descripcion", with: @pqr.descripcion
    fill_in "Tipo", with: @pqr.tipo
    fill_in "User", with: @pqr.user_id
    click_on "Update Pqr"

    assert_text "Pqr was successfully updated"
    click_on "Back"
  end

  test "should destroy Pqr" do
    visit pqr_url(@pqr)
    click_on "Destroy this pqr", match: :first

    assert_text "Pqr was successfully destroyed"
  end
end
