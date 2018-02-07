require 'test_helper'

class UlicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ulica = ulicas(:one)
  end

  test "should get index" do
    get ulicas_url
    assert_response :success
  end

  test "should get new" do
    get new_ulica_url
    assert_response :success
  end

  test "should create ulica" do
    assert_difference('Ulica.count') do
      post ulicas_url, params: { ulica: { id_ulicy: @ulica.id_ulicy, nazwa_ulicy: @ulica.nazwa_ulicy } }
    end

    assert_redirected_to ulica_url(Ulica.last)
  end

  test "should show ulica" do
    get ulica_url(@ulica)
    assert_response :success
  end

  test "should get edit" do
    get edit_ulica_url(@ulica)
    assert_response :success
  end

  test "should update ulica" do
    patch ulica_url(@ulica), params: { ulica: { id_ulicy: @ulica.id_ulicy, nazwa_ulicy: @ulica.nazwa_ulicy } }
    assert_redirected_to ulica_url(@ulica)
  end

  test "should destroy ulica" do
    assert_difference('Ulica.count', -1) do
      delete ulica_url(@ulica)
    end

    assert_redirected_to ulicas_url
  end
end
