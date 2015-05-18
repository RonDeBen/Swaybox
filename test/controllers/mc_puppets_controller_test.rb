require 'test_helper'

class McPuppetsControllerTest < ActionController::TestCase
  setup do
    @mc_puppet = mc_puppets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mc_puppets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mc_puppet" do
    assert_difference('McPuppet.count') do
      post :create, mc_puppet: {  }
    end

    assert_redirected_to mc_puppet_path(assigns(:mc_puppet))
  end

  test "should show mc_puppet" do
    get :show, id: @mc_puppet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mc_puppet
    assert_response :success
  end

  test "should update mc_puppet" do
    patch :update, id: @mc_puppet, mc_puppet: {  }
    assert_redirected_to mc_puppet_path(assigns(:mc_puppet))
  end

  test "should destroy mc_puppet" do
    assert_difference('McPuppet.count', -1) do
      delete :destroy, id: @mc_puppet
    end

    assert_redirected_to mc_puppets_path
  end
end
