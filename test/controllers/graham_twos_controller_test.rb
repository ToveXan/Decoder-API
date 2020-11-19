require 'test_helper'

class GrahamTwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graham_two = graham_twos(:one)
  end

  test "should get index" do
    get graham_twos_url, as: :json
    assert_response :success
  end

  test "should create graham_two" do
    assert_difference('GrahamTwo.count') do
      post graham_twos_url, params: { graham_two: { description: @graham_two.description } }, as: :json
    end

    assert_response 201
  end

  test "should show graham_two" do
    get graham_two_url(@graham_two), as: :json
    assert_response :success
  end

  test "should update graham_two" do
    patch graham_two_url(@graham_two), params: { graham_two: { description: @graham_two.description } }, as: :json
    assert_response 200
  end

  test "should destroy graham_two" do
    assert_difference('GrahamTwo.count', -1) do
      delete graham_two_url(@graham_two), as: :json
    end

    assert_response 204
  end
end
