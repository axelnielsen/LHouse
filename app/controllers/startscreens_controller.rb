class StartscreensController < ApplicationController
  before_action :set_startscreen, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @startscreens = Startscreen.all
    respond_with(@startscreens)
  end

  def show
    respond_with(@startscreen)
  end

  def new
    @startscreen = Startscreen.new
    respond_with(@startscreen)
  end

  def edit
  end

  def create
    @startscreen = Startscreen.new(startscreen_params)
    @startscreen.save
    respond_with(@startscreen)
  end

  def update
    @startscreen.update(startscreen_params)
    respond_with(@startscreen)
  end

  def destroy
    @startscreen.destroy
    respond_with(@startscreen)
  end

  private
    def set_startscreen
      @startscreen = Startscreen.find(params[:id])
    end

    def startscreen_params
      params.require(:startscreen).permit(:name)
    end
end
