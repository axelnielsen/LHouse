class CommonRoomsController < ApplicationController
  before_action :set_common_room, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @common_rooms = CommonRoom.all
    respond_with(@common_rooms)
  end

  def show
    respond_with(@common_room)
  end

  def new
    @common_room = CommonRoom.new
    respond_with(@common_room)
  end

  def edit
  end

  def create
    @common_room = CommonRoom.new(common_room_params)
    @common_room.save
    respond_with(@common_room)
  end

  def update
    @common_room.update(common_room_params)
    respond_with(@common_room)
  end

  def destroy
    @common_room.destroy
    respond_with(@common_room)
  end

  private
    def set_common_room
      @common_room = CommonRoom.find(params[:id])
    end

    def common_room_params
      params.require(:common_room).permit(:name, :community_id)
    end
end
