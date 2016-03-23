require 'test_helper'

class PamenttypesControllerTest < ActionController::TestCase
  setup do
    @pamenttype = pamenttypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pamenttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pamenttype" do
    assert_difference('Pamenttype.count') do
      post :create, pamenttype: { name: @pamenttype.name }
    end

    assert_redirected_to pamenttype_path(assigns(:pamenttype))
  end

  test "should show pamenttype" do
    get :show, id: @pamenttype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pamenttype
    assert_response :success
  end

  test "should update pamenttype" do
    patch :update, id: @pamenttype, pamenttype: { name: @pamenttype.name }
    assert_redirected_to pamenttype_path(assigns(:pamenttype))
  end

  test "should destroy pamenttype" do
    assert_difference('Pamenttype.count', -1) do
      delete :destroy, id: @pamenttype
    end

    assert_redirected_to pamenttypes_path
  end
end
