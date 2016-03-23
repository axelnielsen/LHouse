class TastsController < ApplicationController
  before_action :set_tast, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tasts = Tast.all
    respond_with(@tasts)
  end

  def show
    respond_with(@tast)
  end

  def new
    @tast = Tast.new
    respond_with(@tast)
  end

  def edit
  end

  def create
    @tast = Tast.new(tast_params)
    @tast.save
    respond_with(@tast)
  end

  def update
    @tast.update(tast_params)
    respond_with(@tast)
  end

  def destroy
    @tast.destroy
    respond_with(@tast)
  end

  private
    def set_tast
      @tast = Tast.find(params[:id])
    end

    def tast_params
      params.require(:tast).permit(:name, :initdate, :inithour, :findate, :finhour, :user_id, :content)
    end
end
