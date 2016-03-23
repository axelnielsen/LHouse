require 'test_helper'

class PaymentmethodsControllerTest < ActionController::TestCase
  setup do
    @paymentmethod = paymentmethods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paymentmethods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paymentmethod" do
    assert_difference('Paymentmethod.count') do
      post :create, paymentmethod: { name: @paymentmethod.name }
    end

    assert_redirected_to paymentmethod_path(assigns(:paymentmethod))
  end

  test "should show paymentmethod" do
    get :show, id: @paymentmethod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paymentmethod
    assert_response :success
  end

  test "should update paymentmethod" do
    patch :update, id: @paymentmethod, paymentmethod: { name: @paymentmethod.name }
    assert_redirected_to paymentmethod_path(assigns(:paymentmethod))
  end

  test "should destroy paymentmethod" do
    assert_difference('Paymentmethod.count', -1) do
      delete :destroy, id: @paymentmethod
    end

    assert_redirected_to paymentmethods_path
  end
end
