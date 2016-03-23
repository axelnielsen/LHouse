require 'test_helper'

class JournaloutsControllerTest < ActionController::TestCase
  setup do
    @journalout = journalouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:journalouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create journalout" do
    assert_difference('Journalout.count') do
      post :create, journalout: { amount: @journalout.amount, community_id: @journalout.community_id, description: @journalout.description, duedate: @journalout.duedate, image: @journalout.image, name: @journalout.name, payable_id: @journalout.payable_id, paymentdate: @journalout.paymentdate, paymentmethod_id: @journalout.paymentmethod_id, period: @journalout.period, user_id: @journalout.user_id, voucher: @journalout.voucher }
    end

    assert_redirected_to journalout_path(assigns(:journalout))
  end

  test "should show journalout" do
    get :show, id: @journalout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @journalout
    assert_response :success
  end

  test "should update journalout" do
    patch :update, id: @journalout, journalout: { amount: @journalout.amount, community_id: @journalout.community_id, description: @journalout.description, duedate: @journalout.duedate, image: @journalout.image, name: @journalout.name, payable_id: @journalout.payable_id, paymentdate: @journalout.paymentdate, paymentmethod_id: @journalout.paymentmethod_id, period: @journalout.period, user_id: @journalout.user_id, voucher: @journalout.voucher }
    assert_redirected_to journalout_path(assigns(:journalout))
  end

  test "should destroy journalout" do
    assert_difference('Journalout.count', -1) do
      delete :destroy, id: @journalout
    end

    assert_redirected_to journalouts_path
  end
end
