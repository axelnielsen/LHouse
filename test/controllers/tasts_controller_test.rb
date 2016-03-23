require 'test_helper'

class TastsControllerTest < ActionController::TestCase
  setup do
    @tast = tasts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tast" do
    assert_difference('Tast.count') do
      post :create, tast: { content: @tast.content, findate: @tast.findate, finhour: @tast.finhour, initdate: @tast.initdate, inithour: @tast.inithour, name: @tast.name, user_id: @tast.user_id }
    end

    assert_redirected_to tast_path(assigns(:tast))
  end

  test "should show tast" do
    get :show, id: @tast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tast
    assert_response :success
  end

  test "should update tast" do
    patch :update, id: @tast, tast: { content: @tast.content, findate: @tast.findate, finhour: @tast.finhour, initdate: @tast.initdate, inithour: @tast.inithour, name: @tast.name, user_id: @tast.user_id }
    assert_redirected_to tast_path(assigns(:tast))
  end

  test "should destroy tast" do
    assert_difference('Tast.count', -1) do
      delete :destroy, id: @tast
    end

    assert_redirected_to tasts_path
  end
end
