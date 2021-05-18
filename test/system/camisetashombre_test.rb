require "application_system_test_case"

class CamisetasHombreTest < ApplicationSystemTestCase
  setup do
    @camisetahombre = camisetashombre(:one)
  end

  test "visiting the index" do
    visit camisetashombre_url
    assert_selector "h1", text: "CamisetasHombre"
  end

  test "creating a CamisetaHombre" do
    visit pizzas_url
    click_on "New CamisetaHombre"

    fill_in "Name", with: @camisetahombre.name
    fill_in "Price", with: @camisetahombre_params.price
    fill_in "Source", with: @camisetahombre.source
    click_on "Create CamisetaHombre"

    assert_text "CamisetaHombre was successfully created"
    click_on "Back"
  end

  test "updating a CamisetaHombre" do
    visit pizzas_url
    click_on "Edit", match: :first

    fill_in "Name", with: @camisetahombre.name
    fill_in "Price", with: @camisetahombre.price
    fill_in "Source", with: @camisetahombre.source
    click_on "Update CamisetaHombre"

    assert_text "CamisetaHombre was successfully updated"
    click_on "Back"
  end

  test "destroying a CamisetaHombre" do
    visit pizzas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "CamisetaHombre was successfully destroyed"
  end
end
