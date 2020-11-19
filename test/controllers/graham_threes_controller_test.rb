require 'test_helper'

class GrahamThreesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graham_three = graham_threes(:one)
  end

  test "should get index" do
    get graham_threes_url, as: :json
    assert_response :success
  end

  test "should create graham_three" do
    assert_difference('GrahamThree.count') do
      post graham_threes_url, params: { graham_three: { description: @graham_three.description } }, as: :json
    end

    assert_response 201
  end

  test "should show graham_three" do
    get graham_three_url(@graham_three), as: :json
    assert_response :success
  end

  test "should update graham_three" do
    patch graham_three_url(@graham_three), params: { graham_three: { description: @graham_three.description } }, as: :json
    assert_response 200
  end

  test "should destroy graham_three" do
    assert_difference('GrahamThree.count', -1) do
      delete graham_three_url(@graham_three), as: :json
    end

    assert_response 204
  end
end
