require "test_helper"

class CamisetasHombreControllerTest < ActionDispatch::IntegrationTest
  setup do
    @camisetahombre = camisetashombre(:one)
  end

  test "should get index" do
    get camisetashombre_url
    assert_response :success
  end

  test "should get new" do
    get new_camisetahombre_url
    assert_response :success
  end

  test "should create camisetahombre" do
    assert_difference('CamisetaHombre.count') do
      post pizzas_url, params: { camisetahombre: { name: @camisetahombre.name, price: @camisetahombre.price, source: @camisetahombre.source } }
    end

    assert_redirected_to camisetahombre_url(CamisetaHombre.last)
  end

  test "should show camisetahombre" do
    get camisetahombre_url(@camisetahombre)
    assert_response :success
  end

  test "should get edit" do
    get edit_camisetahombre_url(@camisetahombre)
    assert_response :success
  end

  test "should update camisetahombre" do
    patch camisetahombre_url(@camisetahombre), params: { camisetahombre: { name: @camisetahombre.name, price: @camisetahombre.price, source: @camisetahombre.source } }
    assert_redirected_to camisetahombre_url(@camisetahombre)
  end

  test "should destroy camisetahombre" do
    assert_difference('CamisetaHombre.count', -1) do
      delete pizza_url(@camisetahombre)
    end

    assert_redirected_to camisetashombre_url
  end
end
