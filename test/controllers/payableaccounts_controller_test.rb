require 'test_helper'

class PayableaccountsControllerTest < ActionController::TestCase
  setup do
    @payableaccount = payableaccounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payableaccounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payableaccount" do
    assert_difference('Payableaccount.count') do
      post :create, payableaccount: { community_id: @payableaccount.community_id, subsubtype: @payableaccount.subsubtype, subtype: @payableaccount.subtype, type: @payableaccount.type }
    end

    assert_redirected_to payableaccount_path(assigns(:payableaccount))
  end

  test "should show payableaccount" do
    get :show, id: @payableaccount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payableaccount
    assert_response :success
  end

  test "should update payableaccount" do
    patch :update, id: @payableaccount, payableaccount: { community_id: @payableaccount.community_id, subsubtype: @payableaccount.subsubtype, subtype: @payableaccount.subtype, type: @payableaccount.type }
    assert_redirected_to payableaccount_path(assigns(:payableaccount))
  end

  test "should destroy payableaccount" do
    assert_difference('Payableaccount.count', -1) do
      delete :destroy, id: @payableaccount
    end

    assert_redirected_to payableaccounts_path
  end
end
