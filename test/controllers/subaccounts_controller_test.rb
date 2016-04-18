require 'test_helper'

class SubaccountsControllerTest < ActionController::TestCase
  setup do
    @subaccount = subaccounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subaccounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subaccount" do
    assert_difference('Subaccount.count') do
      post :create, subaccount: { name: @subaccount.name, payableaccount_id: @subaccount.payableaccount_id }
    end

    assert_redirected_to subaccount_path(assigns(:subaccount))
  end

  test "should show subaccount" do
    get :show, id: @subaccount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subaccount
    assert_response :success
  end

  test "should update subaccount" do
    patch :update, id: @subaccount, subaccount: { name: @subaccount.name, payableaccount_id: @subaccount.payableaccount_id }
    assert_redirected_to subaccount_path(assigns(:subaccount))
  end

  test "should destroy subaccount" do
    assert_difference('Subaccount.count', -1) do
      delete :destroy, id: @subaccount
    end

    assert_redirected_to subaccounts_path
  end
end
