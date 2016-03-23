require 'test_helper'

class StartscreensControllerTest < ActionController::TestCase
  setup do
    @startscreen = startscreens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startscreens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startscreen" do
    assert_difference('Startscreen.count') do
      post :create, startscreen: { name: @startscreen.name }
    end

    assert_redirected_to startscreen_path(assigns(:startscreen))
  end

  test "should show startscreen" do
    get :show, id: @startscreen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startscreen
    assert_response :success
  end

  test "should update startscreen" do
    patch :update, id: @startscreen, startscreen: { name: @startscreen.name }
    assert_redirected_to startscreen_path(assigns(:startscreen))
  end

  test "should destroy startscreen" do
    assert_difference('Startscreen.count', -1) do
      delete :destroy, id: @startscreen
    end

    assert_redirected_to startscreens_path
  end
end
