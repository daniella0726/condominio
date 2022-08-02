require "test_helper"

class RespuestaPqrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @respuesta_pqr = respuesta_pqrs(:one)
  end

  test "should get index" do
    get respuesta_pqrs_url
    assert_response :success
  end

  test "should get new" do
    get new_respuesta_pqr_url
    assert_response :success
  end

  test "should create respuesta_pqr" do
    assert_difference("RespuestaPqr.count") do
      post respuesta_pqrs_url, params: { respuesta_pqr: { admin_id: @respuesta_pqr.admin_id, descripcion: @respuesta_pqr.descripcion, pqr_id: @respuesta_pqr.pqr_id } }
    end

    assert_redirected_to respuesta_pqr_url(RespuestaPqr.last)
  end

  test "should show respuesta_pqr" do
    get respuesta_pqr_url(@respuesta_pqr)
    assert_response :success
  end

  test "should get edit" do
    get edit_respuesta_pqr_url(@respuesta_pqr)
    assert_response :success
  end

  test "should update respuesta_pqr" do
    patch respuesta_pqr_url(@respuesta_pqr), params: { respuesta_pqr: { admin_id: @respuesta_pqr.admin_id, descripcion: @respuesta_pqr.descripcion, pqr_id: @respuesta_pqr.pqr_id } }
    assert_redirected_to respuesta_pqr_url(@respuesta_pqr)
  end

  test "should destroy respuesta_pqr" do
    assert_difference("RespuestaPqr.count", -1) do
      delete respuesta_pqr_url(@respuesta_pqr)
    end

    assert_redirected_to respuesta_pqrs_url
  end
end
