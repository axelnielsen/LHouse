require 'test_helper'

class NewsbooksControllerTest < ActionController::TestCase
  setup do
    @newsbook = newsbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newsbook" do
    assert_difference('Newsbook.count') do
      post :create, newsbook: { description: @newsbook.description, name: @newsbook.name, user_id: @newsbook.user_id }
    end

    assert_redirected_to newsbook_path(assigns(:newsbook))
  end

  test "should show newsbook" do
    get :show, id: @newsbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newsbook
    assert_response :success
  end

  test "should update newsbook" do
    patch :update, id: @newsbook, newsbook: { description: @newsbook.description, name: @newsbook.name, user_id: @newsbook.user_id }
    assert_redirected_to newsbook_path(assigns(:newsbook))
  end

  test "should destroy newsbook" do
    assert_difference('Newsbook.count', -1) do
      delete :destroy, id: @newsbook
    end

    assert_redirected_to newsbooks_path
  end
end
