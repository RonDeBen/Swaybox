require 'test_helper'

class RegStatusesControllerTest < ActionController::TestCase
  setup do
    @reg_status = reg_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reg_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reg_status" do
    assert_difference('RegStatus.count') do
      post :create, reg_status: {  }
    end

    assert_redirected_to reg_status_path(assigns(:reg_status))
  end

  test "should show reg_status" do
    get :show, id: @reg_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reg_status
    assert_response :success
  end

  test "should update reg_status" do
    patch :update, id: @reg_status, reg_status: {  }
    assert_redirected_to reg_status_path(assigns(:reg_status))
  end

  test "should destroy reg_status" do
    assert_difference('RegStatus.count', -1) do
      delete :destroy, id: @reg_status
    end

    assert_redirected_to reg_statuses_path
  end
end
