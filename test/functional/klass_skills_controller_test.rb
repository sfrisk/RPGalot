require 'test_helper'

class KlassSkillsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:klass_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create klass_skill" do
    assert_difference('KlassSkill.count') do
      post :create, :klass_skill => { }
    end

    assert_redirected_to klass_skill_path(assigns(:klass_skill))
  end

  test "should show klass_skill" do
    get :show, :id => klass_skills(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => klass_skills(:one).to_param
    assert_response :success
  end

  test "should update klass_skill" do
    put :update, :id => klass_skills(:one).to_param, :klass_skill => { }
    assert_redirected_to klass_skill_path(assigns(:klass_skill))
  end

  test "should destroy klass_skill" do
    assert_difference('KlassSkill.count', -1) do
      delete :destroy, :id => klass_skills(:one).to_param
    end

    assert_redirected_to klass_skills_path
  end
end
