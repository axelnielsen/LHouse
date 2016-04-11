class PayableaccountsController < ApplicationController
  before_action :set_payableaccount, only: [:show, :edit, :update, :destroy]

  respond_to :html

 def index
    @payableaccounts = Payableaccount.all
    #respond_with(@payableaccounts)
  end

  def show
    @payableaccount = Payableaccount.find([:id])
    #respond_with(@payableaccount)
  end

  def new
    @payableaccount = Payableaccount.new
   # respond_with(@payableaccount)
  end

  def edit
    @payableaccount = Payableaccount.find(params[:id])
  end

  def create
  @payableaccounts = Payableaccount.all
   @payableaccount = Payableaccount.create(payableaccount_params)
   # @payableaccount = Payableaccount.new(payableaccount_params)
   # @payableaccount.save
   # respond_with(@payableaccount)
  end

  def update
    @payableaccounts = Payableaccount.all
    @payableaccount = Payableaccount.find(params[:id])
    @payableaccount.update_attributes(payableaccount_params)
    #@payableaccount.update(payableaccount_params)
    #respond_with(@payableaccount)
  end

  def destroy
    @payableaccounts = Payableaccount.all
    @payableaccount = Payableaccount.find(params[:id])
    @payableaccount.destroy
   # @payableaccount.destroy
   # respond_with(@payableaccount)
  end

  def delete
    @payableaccount = Payableaccount.find(params[:payableaccount_id])
  end

  private
   def set_payableaccount
     @payableaccount = Payableaccount.find(params[:id])
   end


    def payableaccount_params
      params.require(:payableaccount).permit(:type, :subtype, :subsubtype, :community_id)
    end
end
