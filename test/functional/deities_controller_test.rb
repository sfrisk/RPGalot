require 'test_helper'

class DeitiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deity" do
    assert_difference('Deity.count') do
      post :create, :deity => { }
    end

    assert_redirected_to deity_path(assigns(:deity))
  end

  test "should show deity" do
    get :show, :id => deities(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => deities(:one).to_param
    assert_response :success
  end

  test "should update deity" do
    put :update, :id => deities(:one).to_param, :deity => { }
    assert_redirected_to deity_path(assigns(:deity))
  end

  test "should destroy deity" do
    assert_difference('Deity.count', -1) do
      delete :destroy, :id => deities(:one).to_param
    end

    assert_redirected_to deities_path
  end
end
