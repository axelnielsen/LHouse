require 'test_helper'

class ReceivableaccountsControllerTest < ActionController::TestCase
  setup do
    @receivableaccount = receivableaccounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receivableaccounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receivableaccount" do
    assert_difference('Receivableaccount.count') do
      post :create, receivableaccount: { aliquot: @receivableaccount.aliquot, ammount: @receivableaccount.ammount, building: @receivableaccount.building, community_id: @receivableaccount.community_id, descroption: @receivableaccount.descroption, initbalance: @receivableaccount.initbalance, name: @receivableaccount.name, percentammount: @receivableaccount.percentammount, pymenttype_id: @receivableaccount.pymenttype_id, subtype: @receivableaccount.subtype }
    end

    assert_redirected_to receivableaccount_path(assigns(:receivableaccount))
  end

  test "should show receivableaccount" do
    get :show, id: @receivableaccount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @receivableaccount
    assert_response :success
  end

  test "should update receivableaccount" do
    patch :update, id: @receivableaccount, receivableaccount: { aliquot: @receivableaccount.aliquot, ammount: @receivableaccount.ammount, building: @receivableaccount.building, community_id: @receivableaccount.community_id, descroption: @receivableaccount.descroption, initbalance: @receivableaccount.initbalance, name: @receivableaccount.name, percentammount: @receivableaccount.percentammount, pymenttype_id: @receivableaccount.pymenttype_id, subtype: @receivableaccount.subtype }
    assert_redirected_to receivableaccount_path(assigns(:receivableaccount))
  end

  test "should destroy receivableaccount" do
    assert_difference('Receivableaccount.count', -1) do
      delete :destroy, id: @receivableaccount
    end

    assert_redirected_to receivableaccounts_path
  end
end
