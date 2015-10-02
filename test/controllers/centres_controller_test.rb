require 'test_helper'

class CentresControllerTest < ActionController::TestCase
  setup do
    @centre = centres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:centres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create centre" do
    assert_difference('Centre.count') do
      post :create, centre: { centre_id: @centre.centre_id }
    end

    assert_redirected_to centre_path(assigns(:centre))
  end

  test "should show centre" do
    get :show, id: @centre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @centre
    assert_response :success
  end

  test "should update centre" do
    patch :update, id: @centre, centre: { centre_id: @centre.centre_id }
    assert_redirected_to centre_path(assigns(:centre))
  end

  test "should destroy centre" do
    assert_difference('Centre.count', -1) do
      delete :destroy, id: @centre
    end

    assert_redirected_to centres_path
  end
end
