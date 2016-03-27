require 'test_helper'

class ConfigsystemsControllerTest < ActionController::TestCase
  setup do
    @configsystem = configsystems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configsystems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configsystem" do
    assert_difference('Configsystem.count') do
      post :create, configsystem: { correctionday: @configsystem.correctionday, extension: @configsystem.extension, interestreceivableaccount_id: @configsystem.interestreceivableaccount_id, interesttype_id: @configsystem.interesttype_id, interesttypeperc: @configsystem.interesttypeperc, penaltyamount: @configsystem.penaltyamount, penaltyreceivableaccount_id: @configsystem.penaltyreceivableaccount_id, periodfin: @configsystem.periodfin, periodinit: @configsystem.periodinit, periodmonth: @configsystem.periodmonth, periodyear: @configsystem.periodyear }
    end

    assert_redirected_to configsystem_path(assigns(:configsystem))
  end

  test "should show configsystem" do
    get :show, id: @configsystem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @configsystem
    assert_response :success
  end

  test "should update configsystem" do
    patch :update, id: @configsystem, configsystem: { correctionday: @configsystem.correctionday, extension: @configsystem.extension, interestreceivableaccount_id: @configsystem.interestreceivableaccount_id, interesttype_id: @configsystem.interesttype_id, interesttypeperc: @configsystem.interesttypeperc, penaltyamount: @configsystem.penaltyamount, penaltyreceivableaccount_id: @configsystem.penaltyreceivableaccount_id, periodfin: @configsystem.periodfin, periodinit: @configsystem.periodinit, periodmonth: @configsystem.periodmonth, periodyear: @configsystem.periodyear }
    assert_redirected_to configsystem_path(assigns(:configsystem))
  end

  test "should destroy configsystem" do
    assert_difference('Configsystem.count', -1) do
      delete :destroy, id: @configsystem
    end

    assert_redirected_to configsystems_path
  end
end
