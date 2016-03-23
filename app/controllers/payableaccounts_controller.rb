class PayableaccountsController < ApplicationController
  before_action :set_payableaccount, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @payableaccounts = Payableaccount.all
    respond_with(@payableaccounts)
  end

  def show
    respond_with(@payableaccount)
  end

  def new
    @payableaccount = Payableaccount.new
    respond_with(@payableaccount)
  end

  def edit
  end

  def create
    @payableaccount = Payableaccount.new(payableaccount_params)
    @payableaccount.save
    respond_with(@payableaccount)
  end

  def update
    @payableaccount.update(payableaccount_params)
    respond_with(@payableaccount)
  end

  def destroy
    @payableaccount.destroy
    respond_with(@payableaccount)
  end

  private
    def set_payableaccount
      @payableaccount = Payableaccount.find(params[:id])
    end

    def payableaccount_params
      params.require(:payableaccount).permit(:type, :subtype, :subsubtype, :community_id)
    end
end
