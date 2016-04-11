require 'test_helper'

class SubpayableaccountsControllerTest < ActionController::TestCase
  setup do
    @subpayableaccount = subpayableaccounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subpayableaccounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subpayableaccount" do
    assert_difference('Subpayableaccount.count') do
      post :create, subpayableaccount: { type: @subpayableaccount.type }
    end

    assert_redirected_to subpayableaccount_path(assigns(:subpayableaccount))
  end

  test "should show subpayableaccount" do
    get :show, id: @subpayableaccount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subpayableaccount
    assert_response :success
  end

  test "should update subpayableaccount" do
    patch :update, id: @subpayableaccount, subpayableaccount: { type: @subpayableaccount.type }
    assert_redirected_to subpayableaccount_path(assigns(:subpayableaccount))
  end

  test "should destroy subpayableaccount" do
    assert_difference('Subpayableaccount.count', -1) do
      delete :destroy, id: @subpayableaccount
    end

    assert_redirected_to subpayableaccounts_path
  end
end
