require 'test_helper'

class CombisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @combi = combis(:one)
  end

  test "should get index" do
    get combis_url
    assert_response :success
  end

  test "should get new" do
    get new_combi_url
    assert_response :success
  end

  test "should create combi" do
    assert_difference('Combi.count') do
      post combis_url, params: { combi: { fueltype: @combi.fueltype, kilometers: @combi.kilometers, marque: @combi.marque, owner: @combi.owner, year: @combi.year } }
    end

    assert_redirected_to combi_url(Combi.last)
  end

  test "should show combi" do
    get combi_url(@combi)
    assert_response :success
  end

  test "should get edit" do
    get edit_combi_url(@combi)
    assert_response :success
  end

  test "should update combi" do
    patch combi_url(@combi), params: { combi: { fueltype: @combi.fueltype, kilometers: @combi.kilometers, marque: @combi.marque, owner: @combi.owner, year: @combi.year } }
    assert_redirected_to combi_url(@combi)
  end

  test "should destroy combi" do
    assert_difference('Combi.count', -1) do
      delete combi_url(@combi)
    end

    assert_redirected_to combis_url
  end
end
