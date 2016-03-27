require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post :create, service: { custnumber: @service.custnumber, payableaccount_id: @service.payableaccount_id, period: @service.period, porcaguacaliente: @service.porcaguacaliente, porccalefaccion: @service.porccalefaccion, porcgastocomun: @service.porcgastocomun, vendor_id: @service.vendor_id }
    end

    assert_redirected_to service_path(assigns(:service))
  end

  test "should show service" do
    get :show, id: @service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service
    assert_response :success
  end

  test "should update service" do
    patch :update, id: @service, service: { custnumber: @service.custnumber, payableaccount_id: @service.payableaccount_id, period: @service.period, porcaguacaliente: @service.porcaguacaliente, porccalefaccion: @service.porccalefaccion, porcgastocomun: @service.porcgastocomun, vendor_id: @service.vendor_id }
    assert_redirected_to service_path(assigns(:service))
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete :destroy, id: @service
    end

    assert_redirected_to services_path
  end
end
