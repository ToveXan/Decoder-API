require 'test_helper'

class GrahamTutorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graham_tutorial = graham_tutorials(:one)
  end

  test "should get index" do
    get graham_tutorials_url, as: :json
    assert_response :success
  end

  test "should create graham_tutorial" do
    assert_difference('GrahamTutorial.count') do
      post graham_tutorials_url, params: { graham_tutorial: { five: @graham_tutorial.five, four: @graham_tutorial.four, one: @graham_tutorial.one, three: @graham_tutorial.three, two: @graham_tutorial.two } }, as: :json
    end

    assert_response 201
  end

  test "should show graham_tutorial" do
    get graham_tutorial_url(@graham_tutorial), as: :json
    assert_response :success
  end

  test "should update graham_tutorial" do
    patch graham_tutorial_url(@graham_tutorial), params: { graham_tutorial: { five: @graham_tutorial.five, four: @graham_tutorial.four, one: @graham_tutorial.one, three: @graham_tutorial.three, two: @graham_tutorial.two } }, as: :json
    assert_response 200
  end

  test "should destroy graham_tutorial" do
    assert_difference('GrahamTutorial.count', -1) do
      delete graham_tutorial_url(@graham_tutorial), as: :json
    end

    assert_response 204
  end
end
