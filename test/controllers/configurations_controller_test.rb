require 'test_helper'

class ConfigurationsControllerTest < ActionController::TestCase
  setup do
    @configuration = configurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configurations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configuration" do
    assert_difference('Configuration.count') do
      post :create, configuration: { correctionday: @configuration.correctionday, extension: @configuration.extension, interestreceivableaccount_id: @configuration.interestreceivableaccount_id, interesttype_id: @configuration.interesttype_id, interesttypeperc: @configuration.interesttypeperc, penaltyamount: @configuration.penaltyamount, penaltyreceivableaccount_id: @configuration.penaltyreceivableaccount_id, periodfin: @configuration.periodfin, periodinit: @configuration.periodinit, periodmonth: @configuration.periodmonth, periodyear: @configuration.periodyear }
    end

    assert_redirected_to configuration_path(assigns(:configuration))
  end

  test "should show configuration" do
    get :show, id: @configuration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @configuration
    assert_response :success
  end

  test "should update configuration" do
    patch :update, id: @configuration, configuration: { correctionday: @configuration.correctionday, extension: @configuration.extension, interestreceivableaccount_id: @configuration.interestreceivableaccount_id, interesttype_id: @configuration.interesttype_id, interesttypeperc: @configuration.interesttypeperc, penaltyamount: @configuration.penaltyamount, penaltyreceivableaccount_id: @configuration.penaltyreceivableaccount_id, periodfin: @configuration.periodfin, periodinit: @configuration.periodinit, periodmonth: @configuration.periodmonth, periodyear: @configuration.periodyear }
    assert_redirected_to configuration_path(assigns(:configuration))
  end

  test "should destroy configuration" do
    assert_difference('Configuration.count', -1) do
      delete :destroy, id: @configuration
    end

    assert_redirected_to configurations_path
  end
end
