require 'test_helper'

class WideStatusesControllerTest < ActionController::TestCase
  setup do
    @wide_status = wide_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wide_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wide_status" do
    assert_difference('WideStatus.count') do
      post :create, wide_status: {  }
    end

    assert_redirected_to wide_status_path(assigns(:wide_status))
  end

  test "should show wide_status" do
    get :show, id: @wide_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wide_status
    assert_response :success
  end

  test "should update wide_status" do
    patch :update, id: @wide_status, wide_status: {  }
    assert_redirected_to wide_status_path(assigns(:wide_status))
  end

  test "should destroy wide_status" do
    assert_difference('WideStatus.count', -1) do
      delete :destroy, id: @wide_status
    end

    assert_redirected_to wide_statuses_path
  end
end
