require 'test_helper'

class GrahamMainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graham_main = graham_mains(:one)
  end

  test "should get index" do
    get graham_mains_url, as: :json
    assert_response :success
  end

  test "should create graham_main" do
    assert_difference('GrahamMain.count') do
      post graham_mains_url, params: { graham_main: { five: @graham_main.five, four: @graham_main.four, one: @graham_main.one, three: @graham_main.three, two: @graham_main.two } }, as: :json
    end

    assert_response 201
  end

  test "should show graham_main" do
    get graham_main_url(@graham_main), as: :json
    assert_response :success
  end

  test "should update graham_main" do
    patch graham_main_url(@graham_main), params: { graham_main: { five: @graham_main.five, four: @graham_main.four, one: @graham_main.one, three: @graham_main.three, two: @graham_main.two } }, as: :json
    assert_response 200
  end

  test "should destroy graham_main" do
    assert_difference('GrahamMain.count', -1) do
      delete graham_main_url(@graham_main), as: :json
    end

    assert_response 204
  end
end
