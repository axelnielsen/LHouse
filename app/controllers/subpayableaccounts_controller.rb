class SubpayableaccountsController < ApplicationController
  before_action :set_subpayableaccount, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @subpayableaccounts = Subpayableaccount.all
    respond_with(@subpayableaccounts)
  end

  def show
    respond_with(@subpayableaccount)
  end

  def new
    @subpayableaccount = Subpayableaccount.new
    respond_with(@subpayableaccount)
  end

  def edit
  end

  def create
    @subpayableaccount = Subpayableaccount.new(subpayableaccount_params)
    @subpayableaccount.save
    respond_with(@subpayableaccount)
  end

  def update
    @subpayableaccount.update(subpayableaccount_params)
    respond_with(@subpayableaccount)
  end

  def destroy
    @subpayableaccount.destroy
    respond_with(@subpayableaccount)
  end

  private
    def set_subpayableaccount
      @subpayableaccount = Subpayableaccount.find(params[:id])
    end

    def subpayableaccount_params
      params.require(:subpayableaccount).permit(:type)
    end
end
