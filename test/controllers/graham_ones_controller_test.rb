require 'test_helper'

class GrahamOnesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graham_one = graham_ones(:one)
  end

  test "should get index" do
    get graham_ones_url, as: :json
    assert_response :success
  end

  test "should create graham_one" do
    assert_difference('GrahamOne.count') do
      post graham_ones_url, params: { graham_one: { description: @graham_one.description } }, as: :json
    end

    assert_response 201
  end

  test "should show graham_one" do
    get graham_one_url(@graham_one), as: :json
    assert_response :success
  end

  test "should update graham_one" do
    patch graham_one_url(@graham_one), params: { graham_one: { description: @graham_one.description } }, as: :json
    assert_response 200
  end

  test "should destroy graham_one" do
    assert_difference('GrahamOne.count', -1) do
      delete graham_one_url(@graham_one), as: :json
    end

    assert_response 204
  end
end
