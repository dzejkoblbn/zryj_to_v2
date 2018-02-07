require 'test_helper'

class ProduktsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produkt = produkts(:one)
  end

  test "should get index" do
    get produkts_url
    assert_response :success
  end

  test "should get new" do
    get new_produkt_url
    assert_response :success
  end

  test "should create produkt" do
    assert_difference('Produkt.count') do
      post produkts_url, params: { produkt: { cena: @produkt.cena, czas_przygotowania: @produkt.czas_przygotowania, id_produktu: @produkt.id_produktu, nazwa_produktu: @produkt.nazwa_produktu, opis_produktu: @produkt.opis_produktu } }
    end

    assert_redirected_to produkt_url(Produkt.last)
  end

  test "should show produkt" do
    get produkt_url(@produkt)
    assert_response :success
  end

  test "should get edit" do
    get edit_produkt_url(@produkt)
    assert_response :success
  end

  test "should update produkt" do
    patch produkt_url(@produkt), params: { produkt: { cena: @produkt.cena, czas_przygotowania: @produkt.czas_przygotowania, id_produktu: @produkt.id_produktu, nazwa_produktu: @produkt.nazwa_produktu, opis_produktu: @produkt.opis_produktu } }
    assert_redirected_to produkt_url(@produkt)
  end

  test "should destroy produkt" do
    assert_difference('Produkt.count', -1) do
      delete produkt_url(@produkt)
    end

    assert_redirected_to produkts_url
  end
end
