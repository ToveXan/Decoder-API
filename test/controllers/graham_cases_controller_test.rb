require 'test_helper'

class GrahamCasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graham_case = graham_cases(:one)
  end

  test "should get index" do
    get graham_cases_url, as: :json
    assert_response :success
  end

  test "should create graham_case" do
    assert_difference('GrahamCase.count') do
      post graham_cases_url, params: { graham_case: { five: @graham_case.five, four: @graham_case.four, one: @graham_case.one, three: @graham_case.three, two: @graham_case.two } }, as: :json
    end

    assert_response 201
  end

  test "should show graham_case" do
    get graham_case_url(@graham_case), as: :json
    assert_response :success
  end

  test "should update graham_case" do
    patch graham_case_url(@graham_case), params: { graham_case: { five: @graham_case.five, four: @graham_case.four, one: @graham_case.one, three: @graham_case.three, two: @graham_case.two } }, as: :json
    assert_response 200
  end

  test "should destroy graham_case" do
    assert_difference('GrahamCase.count', -1) do
      delete graham_case_url(@graham_case), as: :json
    end

    assert_response 204
  end
end
