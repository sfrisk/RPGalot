require 'test_helper'

class KlassAlignmentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:klass_alignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create klass_alignment" do
    assert_difference('KlassAlignment.count') do
      post :create, :klass_alignment => { }
    end

    assert_redirected_to klass_alignment_path(assigns(:klass_alignment))
  end

  test "should show klass_alignment" do
    get :show, :id => klass_alignments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => klass_alignments(:one).to_param
    assert_response :success
  end

  test "should update klass_alignment" do
    put :update, :id => klass_alignments(:one).to_param, :klass_alignment => { }
    assert_redirected_to klass_alignment_path(assigns(:klass_alignment))
  end

  test "should destroy klass_alignment" do
    assert_difference('KlassAlignment.count', -1) do
      delete :destroy, :id => klass_alignments(:one).to_param
    end

    assert_redirected_to klass_alignments_path
  end
end
