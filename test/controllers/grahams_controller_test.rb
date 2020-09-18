require 'test_helper'

class GrahamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graham = grahams(:one)
  end

  test "should get index" do
    get grahams_url, as: :json
    assert_response :success
  end

  test "should create graham" do
    assert_difference('Graham.count') do
      post grahams_url, params: { graham: { greeting: @graham.greeting, life_count: @graham.life_count, tutorial: @graham.tutorial, user_id: @graham.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show graham" do
    get graham_url(@graham), as: :json
    assert_response :success
  end

  test "should update graham" do
    patch graham_url(@graham), params: { graham: { greeting: @graham.greeting, life_count: @graham.life_count, tutorial: @graham.tutorial, user_id: @graham.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy graham" do
    assert_difference('Graham.count', -1) do
      delete graham_url(@graham), as: :json
    end

    assert_response 204
  end
end
