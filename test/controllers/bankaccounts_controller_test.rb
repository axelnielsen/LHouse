require 'test_helper'

class BankaccountsControllerTest < ActionController::TestCase
  setup do
    @bankaccount = bankaccounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bankaccounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bankaccount" do
    assert_difference('Bankaccount.count') do
      post :create, bankaccount: { accountholder: @bankaccount.accountholder, accountnum: @bankaccount.accountnum, bankname: @bankaccount.bankname, community_id: @bankaccount.community_id, initbalance: @bankaccount.initbalance, name: @bankaccount.name }
    end

    assert_redirected_to bankaccount_path(assigns(:bankaccount))
  end

  test "should show bankaccount" do
    get :show, id: @bankaccount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bankaccount
    assert_response :success
  end

  test "should update bankaccount" do
    patch :update, id: @bankaccount, bankaccount: { accountholder: @bankaccount.accountholder, accountnum: @bankaccount.accountnum, bankname: @bankaccount.bankname, community_id: @bankaccount.community_id, initbalance: @bankaccount.initbalance, name: @bankaccount.name }
    assert_redirected_to bankaccount_path(assigns(:bankaccount))
  end

  test "should destroy bankaccount" do
    assert_difference('Bankaccount.count', -1) do
      delete :destroy, id: @bankaccount
    end

    assert_redirected_to bankaccounts_path
  end
end
