require 'test_helper'

class JournalsControllerTest < ActionController::TestCase
  setup do
    @journal = journals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:journals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create journal" do
    assert_difference('Journal.count') do
      post :create, journal: { community_id: @journal.community_id, credit: @journal.credit, debit: @journal.debit, description: @journal.description, duedate: @journal.duedate, image: @journal.image, journalnum: @journal.journalnum, name: @journal.name, paybleaccount_id: @journal.paybleaccount_id, paymentdate: @journal.paymentdate, receivableaccount_id: @journal.receivableaccount_id, user_id: @journal.user_id, vendor_id: @journal.vendor_id }
    end

    assert_redirected_to journal_path(assigns(:journal))
  end

  test "should show journal" do
    get :show, id: @journal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @journal
    assert_response :success
  end

  test "should update journal" do
    patch :update, id: @journal, journal: { community_id: @journal.community_id, credit: @journal.credit, debit: @journal.debit, description: @journal.description, duedate: @journal.duedate, image: @journal.image, journalnum: @journal.journalnum, name: @journal.name, paybleaccount_id: @journal.paybleaccount_id, paymentdate: @journal.paymentdate, receivableaccount_id: @journal.receivableaccount_id, user_id: @journal.user_id, vendor_id: @journal.vendor_id }
    assert_redirected_to journal_path(assigns(:journal))
  end

  test "should destroy journal" do
    assert_difference('Journal.count', -1) do
      delete :destroy, id: @journal
    end

    assert_redirected_to journals_path
  end
end
