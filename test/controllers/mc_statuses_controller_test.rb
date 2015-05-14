require 'test_helper'

class McStatusesControllerTest < ActionController::TestCase
  setup do
    @mc_status = mc_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mc_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mc_status" do
    assert_difference('McStatus.count') do
      post :create, mc_status: {  }
    end

    assert_redirected_to mc_status_path(assigns(:mc_status))
  end

  test "should show mc_status" do
    get :show, id: @mc_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mc_status
    assert_response :success
  end

  test "should update mc_status" do
    patch :update, id: @mc_status, mc_status: {  }
    assert_redirected_to mc_status_path(assigns(:mc_status))
  end

  test "should destroy mc_status" do
    assert_difference('McStatus.count', -1) do
      delete :destroy, id: @mc_status
    end

    assert_redirected_to mc_statuses_path
  end
end
