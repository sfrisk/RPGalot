require 'test_helper'

class SkillsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill" do
    assert_difference('Skill.count') do
      post :create, :skill => { }
    end

    assert_redirected_to skill_path(assigns(:skill))
  end

  test "should show skill" do
    get :show, :id => skills(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => skills(:one).to_param
    assert_response :success
  end

  test "should update skill" do
    put :update, :id => skills(:one).to_param, :skill => { }
    assert_redirected_to skill_path(assigns(:skill))
  end

  test "should destroy skill" do
    assert_difference('Skill.count', -1) do
      delete :destroy, :id => skills(:one).to_param
    end

    assert_redirected_to skills_path
  end
end
