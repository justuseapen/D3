require 'test_helper'

class SeshesControllerTest < ActionController::TestCase
  setup do
    @sesh = seshes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seshes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sesh" do
    assert_difference('Sesh.count') do
      post :create, sesh: { ended_at: @sesh.ended_at, name: @sesh.name }
    end

    assert_redirected_to sesh_path(assigns(:sesh))
  end

  test "should show sesh" do
    get :show, id: @sesh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sesh
    assert_response :success
  end

  test "should update sesh" do
    patch :update, id: @sesh, sesh: { ended_at: @sesh.ended_at, name: @sesh.name }
    assert_redirected_to sesh_path(assigns(:sesh))
  end

  test "should destroy sesh" do
    assert_difference('Sesh.count', -1) do
      delete :destroy, id: @sesh
    end

    assert_redirected_to seshes_path
  end
end
