require 'test_helper'

class AlignmentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alignment" do
    assert_difference('Alignment.count') do
      post :create, :alignment => { }
    end

    assert_redirected_to alignment_path(assigns(:alignment))
  end

  test "should show alignment" do
    get :show, :id => alignments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => alignments(:one).to_param
    assert_response :success
  end

  test "should update alignment" do
    put :update, :id => alignments(:one).to_param, :alignment => { }
    assert_redirected_to alignment_path(assigns(:alignment))
  end

  test "should destroy alignment" do
    assert_difference('Alignment.count', -1) do
      delete :destroy, :id => alignments(:one).to_param
    end

    assert_redirected_to alignments_path
  end
end
