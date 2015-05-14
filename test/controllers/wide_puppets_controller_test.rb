require 'test_helper'

class WidePuppetsControllerTest < ActionController::TestCase
  setup do
    @wide_puppet = wide_puppets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wide_puppets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wide_puppet" do
    assert_difference('WidePuppet.count') do
      post :create, wide_puppet: {  }
    end

    assert_redirected_to wide_puppet_path(assigns(:wide_puppet))
  end

  test "should show wide_puppet" do
    get :show, id: @wide_puppet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wide_puppet
    assert_response :success
  end

  test "should update wide_puppet" do
    patch :update, id: @wide_puppet, wide_puppet: {  }
    assert_redirected_to wide_puppet_path(assigns(:wide_puppet))
  end

  test "should destroy wide_puppet" do
    assert_difference('WidePuppet.count', -1) do
      delete :destroy, id: @wide_puppet
    end

    assert_redirected_to wide_puppets_path
  end
end
