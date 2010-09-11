require 'test_helper'

class WeaponsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weapons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weapon" do
    assert_difference('Weapon.count') do
      post :create, :weapon => { }
    end

    assert_redirected_to weapon_path(assigns(:weapon))
  end

  test "should show weapon" do
    get :show, :id => weapons(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => weapons(:one).to_param
    assert_response :success
  end

  test "should update weapon" do
    put :update, :id => weapons(:one).to_param, :weapon => { }
    assert_redirected_to weapon_path(assigns(:weapon))
  end

  test "should destroy weapon" do
    assert_difference('Weapon.count', -1) do
      delete :destroy, :id => weapons(:one).to_param
    end

    assert_redirected_to weapons_path
  end
end
