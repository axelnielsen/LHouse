class SubaccountsController < ApplicationController
  before_action :set_subaccount, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @subaccounts = Subaccount.all
    respond_with(@subaccounts)
  end

  def show
    respond_with(@subaccount)
  end

  def new
    @subaccount = Subaccount.new
    respond_with(@subaccount)
  end

  def edit
  end

  def create
    @subaccount = Subaccount.new(subaccount_params)
    @subaccount.save
    respond_with(@subaccount)
  end

  def update
    @subaccount.update(subaccount_params)
    respond_with(@subaccount)
  end

  def destroy
    @subaccount.destroy
    respond_with(@subaccount)
  end

  private
    def set_subaccount
      @subaccount = Subaccount.find(params[:id])
    end

    def subaccount_params
      params.require(:subaccount).permit(:name, :payableaccount_id)
    end
end
