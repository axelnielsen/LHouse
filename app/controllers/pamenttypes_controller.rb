class PamenttypesController < ApplicationController
  before_action :set_pamenttype, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pamenttypes = Pamenttype.all
    respond_with(@pamenttypes)
  end

  def show
    respond_with(@pamenttype)
  end

  def new
    @pamenttype = Pamenttype.new
    respond_with(@pamenttype)
  end

  def edit
  end

  def create
    @pamenttype = Pamenttype.new(pamenttype_params)
    @pamenttype.save
    respond_with(@pamenttype)
  end

  def update
    @pamenttype.update(pamenttype_params)
    respond_with(@pamenttype)
  end

  def destroy
    @pamenttype.destroy
    respond_with(@pamenttype)
  end

  private
    def set_pamenttype
      @pamenttype = Pamenttype.find(params[:id])
    end

    def pamenttype_params
      params.require(:pamenttype).permit(:name)
    end
end
