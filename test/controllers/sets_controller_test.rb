require 'test_helper'

class SetsControllerTest < ActionController::TestCase
  setup do
    @set = sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create set" do
    assert_difference('Set.count') do
      post :create, set: {  }
    end

    assert_redirected_to set_path(assigns(:set))
  end

  test "should show set" do
    get :show, id: @set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @set
    assert_response :success
  end

  test "should update set" do
    patch :update, id: @set, set: {  }
    assert_redirected_to set_path(assigns(:set))
  end

  test "should destroy set" do
    assert_difference('Set.count', -1) do
      delete :destroy, id: @set
    end

    assert_redirected_to sets_path
  end
end
