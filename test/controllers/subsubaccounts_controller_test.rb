require 'test_helper'

class SubsubaccountsControllerTest < ActionController::TestCase
  setup do
    @subsubaccount = subsubaccounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subsubaccounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subsubaccount" do
    assert_difference('Subsubaccount.count') do
      post :create, subsubaccount: { name: @subsubaccount.name, subaccount_id: @subsubaccount.subaccount_id }
    end

    assert_redirected_to subsubaccount_path(assigns(:subsubaccount))
  end

  test "should show subsubaccount" do
    get :show, id: @subsubaccount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subsubaccount
    assert_response :success
  end

  test "should update subsubaccount" do
    patch :update, id: @subsubaccount, subsubaccount: { name: @subsubaccount.name, subaccount_id: @subsubaccount.subaccount_id }
    assert_redirected_to subsubaccount_path(assigns(:subsubaccount))
  end

  test "should destroy subsubaccount" do
    assert_difference('Subsubaccount.count', -1) do
      delete :destroy, id: @subsubaccount
    end

    assert_redirected_to subsubaccounts_path
  end
end
