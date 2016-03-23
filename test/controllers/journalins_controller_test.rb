require 'test_helper'

class JournalinsControllerTest < ActionController::TestCase
  setup do
    @journalin = journalins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:journalins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create journalin" do
    assert_difference('Journalin.count') do
      post :create, journalin: { amount: @journalin.amount, apartment_id: @journalin.apartment_id, community_id: @journalin.community_id, description: @journalin.description, image: @journalin.image, name: @journalin.name, paymentdate: @journalin.paymentdate, paymentmethod_id: @journalin.paymentmethod_id, period: @journalin.period, receivableaccount_id: @journalin.receivableaccount_id, user_id: @journalin.user_id, voucher: @journalin.voucher }
    end

    assert_redirected_to journalin_path(assigns(:journalin))
  end

  test "should show journalin" do
    get :show, id: @journalin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @journalin
    assert_response :success
  end

  test "should update journalin" do
    patch :update, id: @journalin, journalin: { amount: @journalin.amount, apartment_id: @journalin.apartment_id, community_id: @journalin.community_id, description: @journalin.description, image: @journalin.image, name: @journalin.name, paymentdate: @journalin.paymentdate, paymentmethod_id: @journalin.paymentmethod_id, period: @journalin.period, receivableaccount_id: @journalin.receivableaccount_id, user_id: @journalin.user_id, voucher: @journalin.voucher }
    assert_redirected_to journalin_path(assigns(:journalin))
  end

  test "should destroy journalin" do
    assert_difference('Journalin.count', -1) do
      delete :destroy, id: @journalin
    end

    assert_redirected_to journalins_path
  end
end
