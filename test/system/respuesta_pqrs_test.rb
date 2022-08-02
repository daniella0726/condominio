require "application_system_test_case"

class RespuestaPqrsTest < ApplicationSystemTestCase
  setup do
    @respuesta_pqr = respuesta_pqrs(:one)
  end

  test "visiting the index" do
    visit respuesta_pqrs_url
    assert_selector "h1", text: "Respuesta pqrs"
  end

  test "should create respuesta pqr" do
    visit respuesta_pqrs_url
    click_on "New respuesta pqr"

    fill_in "Admin", with: @respuesta_pqr.admin_id
    fill_in "Descripcion", with: @respuesta_pqr.descripcion
    fill_in "Pqr", with: @respuesta_pqr.pqr_id
    click_on "Create Respuesta pqr"

    assert_text "Respuesta pqr was successfully created"
    click_on "Back"
  end

  test "should update Respuesta pqr" do
    visit respuesta_pqr_url(@respuesta_pqr)
    click_on "Edit this respuesta pqr", match: :first

    fill_in "Admin", with: @respuesta_pqr.admin_id
    fill_in "Descripcion", with: @respuesta_pqr.descripcion
    fill_in "Pqr", with: @respuesta_pqr.pqr_id
    click_on "Update Respuesta pqr"

    assert_text "Respuesta pqr was successfully updated"
    click_on "Back"
  end

  test "should destroy Respuesta pqr" do
    visit respuesta_pqr_url(@respuesta_pqr)
    click_on "Destroy this respuesta pqr", match: :first

    assert_text "Respuesta pqr was successfully destroyed"
  end
end
