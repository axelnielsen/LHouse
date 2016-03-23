require 'test_helper'

class VendorsControllerTest < ActionController::TestCase
  setup do
    @vendor = vendors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendor" do
    assert_difference('Vendor.count') do
      post :create, vendor: { accountnum: @vendor.accountnum, address: @vendor.address, bankaccount_id: @vendor.bankaccount_id, bankname: @vendor.bankname, community_id: @vendor.community_id, contactmail: @vendor.contactmail, contactphone: @vendor.contactphone, name: @vendor.name, rut: @vendor.rut, website: @vendor.website }
    end

    assert_redirected_to vendor_path(assigns(:vendor))
  end

  test "should show vendor" do
    get :show, id: @vendor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendor
    assert_response :success
  end

  test "should update vendor" do
    patch :update, id: @vendor, vendor: { accountnum: @vendor.accountnum, address: @vendor.address, bankaccount_id: @vendor.bankaccount_id, bankname: @vendor.bankname, community_id: @vendor.community_id, contactmail: @vendor.contactmail, contactphone: @vendor.contactphone, name: @vendor.name, rut: @vendor.rut, website: @vendor.website }
    assert_redirected_to vendor_path(assigns(:vendor))
  end

  test "should destroy vendor" do
    assert_difference('Vendor.count', -1) do
      delete :destroy, id: @vendor
    end

    assert_redirected_to vendors_path
  end
end