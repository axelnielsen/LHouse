class ReceivableaccountsController < ApplicationController
  before_action :set_receivableaccount, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @receivableaccounts = Receivableaccount.all
    #respond_with(@receivableaccounts)
  end

  def show
    @receivableaccount = Receivableaccount.find([:id])
    #respond_with(@receivableaccount)
  end

  def new
    @receivableaccount = Receivableaccount.new
   # respond_with(@receivableaccount)
  end

  def edit
    @receivableaccount = Receivableaccount.find(params[:id])
  end

  def create
  @receivableaccounts = Receivableaccount.all
   @receivableaccount = Receivableaccount.create(receivableaccount_params)
   # @receivableaccount = Receivableaccount.new(receivableaccount_params)
   # @receivableaccount.save
   # respond_with(@receivableaccount)
  end

  def update
    @receivableaccounts = Receivableaccount.all
    @receivableaccount = Receivableaccount.find(params[:id])
    @receivableaccount.update_attributes(receivableaccount_params)
    #@receivableaccount.update(receivableaccount_params)
    #respond_with(@receivableaccount)
  end

  def destroy
    @receivableaccounts = Receivableaccount.all
    @receivableaccount = Receivableaccount.find(params[:id])
    @receivableaccount.destroy
   # @receivableaccount.destroy
   # respond_with(@receivableaccount)
  end

  def delete
    @receivableaccount = Receivableaccount.find(params[:receivableaccount_id])
  end

  private
   def set_receivableaccount
     @receivableaccount = Receivableaccount.find(params[:id])
   end

    def receivableaccount_params
      params.require(:receivableaccount).permit(:name, :initbalance, :descroption, :pymenttype_id, :subtype, :ammount, :percentammount, :aliquot, :building, :community_id)
    end
end
