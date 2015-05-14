require 'test_helper'

class ShotBreakdownsControllerTest < ActionController::TestCase
  setup do
    @shot_breakdown = shot_breakdowns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shot_breakdowns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shot_breakdown" do
    assert_difference('ShotBreakdown.count') do
      post :create, shot_breakdown: {  }
    end

    assert_redirected_to shot_breakdown_path(assigns(:shot_breakdown))
  end

  test "should show shot_breakdown" do
    get :show, id: @shot_breakdown
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shot_breakdown
    assert_response :success
  end

  test "should update shot_breakdown" do
    patch :update, id: @shot_breakdown, shot_breakdown: {  }
    assert_redirected_to shot_breakdown_path(assigns(:shot_breakdown))
  end

  test "should destroy shot_breakdown" do
    assert_difference('ShotBreakdown.count', -1) do
      delete :destroy, id: @shot_breakdown
    end

    assert_redirected_to shot_breakdowns_path
  end
end
