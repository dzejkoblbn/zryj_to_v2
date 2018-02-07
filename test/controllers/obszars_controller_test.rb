require 'test_helper'

class ObszarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obszar = obszars(:one)
  end

  test "should get index" do
    get obszars_url
    assert_response :success
  end

  test "should get new" do
    get new_obszar_url
    assert_response :success
  end

  test "should create obszar" do
    assert_difference('Obszar.count') do
      post obszars_url, params: { obszar: { id_obszaru: @obszar.id_obszaru, kod_pocztowy: @obszar.kod_pocztowy } }
    end

    assert_redirected_to obszar_url(Obszar.last)
  end

  test "should show obszar" do
    get obszar_url(@obszar)
    assert_response :success
  end

  test "should get edit" do
    get edit_obszar_url(@obszar)
    assert_response :success
  end

  test "should update obszar" do
    patch obszar_url(@obszar), params: { obszar: { id_obszaru: @obszar.id_obszaru, kod_pocztowy: @obszar.kod_pocztowy } }
    assert_redirected_to obszar_url(@obszar)
  end

  test "should destroy obszar" do
    assert_difference('Obszar.count', -1) do
      delete obszar_url(@obszar)
    end

    assert_redirected_to obszars_url
  end
end
