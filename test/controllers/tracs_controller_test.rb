require 'test_helper'

class TracsControllerTest < ActionController::TestCase
  setup do
    @trac = tracs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tracs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trac" do
    assert_difference('Trac.count') do
      post :create, trac: { sesh_id: @trac.sesh_id }
    end

    assert_redirected_to trac_path(assigns(:trac))
  end

  test "should show trac" do
    get :show, id: @trac
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trac
    assert_response :success
  end

  test "should update trac" do
    patch :update, id: @trac, trac: { sesh_id: @trac.sesh_id }
    assert_redirected_to trac_path(assigns(:trac))
  end

  test "should destroy trac" do
    assert_difference('Trac.count', -1) do
      delete :destroy, id: @trac
    end

    assert_redirected_to tracs_path
  end
end
