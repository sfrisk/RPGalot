require 'test_helper'

class CharacterFeatsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_feats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_feat" do
    assert_difference('CharacterFeat.count') do
      post :create, :character_feat => { }
    end

    assert_redirected_to character_feat_path(assigns(:character_feat))
  end

  test "should show character_feat" do
    get :show, :id => character_feats(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => character_feats(:one).to_param
    assert_response :success
  end

  test "should update character_feat" do
    put :update, :id => character_feats(:one).to_param, :character_feat => { }
    assert_redirected_to character_feat_path(assigns(:character_feat))
  end

  test "should destroy character_feat" do
    assert_difference('CharacterFeat.count', -1) do
      delete :destroy, :id => character_feats(:one).to_param
    end

    assert_redirected_to character_feats_path
  end
end
