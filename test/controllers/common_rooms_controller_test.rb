require 'test_helper'

class CommonRoomsControllerTest < ActionController::TestCase
  setup do
    @common_room = common_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:common_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create common_room" do
    assert_difference('CommonRoom.count') do
      post :create, common_room: { community_id: @common_room.community_id, name: @common_room.name }
    end

    assert_redirected_to common_room_path(assigns(:common_room))
  end

  test "should show common_room" do
    get :show, id: @common_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @common_room
    assert_response :success
  end

  test "should update common_room" do
    patch :update, id: @common_room, common_room: { community_id: @common_room.community_id, name: @common_room.name }
    assert_redirected_to common_room_path(assigns(:common_room))
  end

  test "should destroy common_room" do
    assert_difference('CommonRoom.count', -1) do
      delete :destroy, id: @common_room
    end

    assert_redirected_to common_rooms_path
  end
end
