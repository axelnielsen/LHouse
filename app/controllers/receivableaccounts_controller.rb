class ReceivableaccountsController < ApplicationController
  before_action :set_receivableaccount, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @receivableaccounts = Receivableaccount.all
    respond_with(@receivableaccounts)
  end

  def show
    respond_with(@receivableaccount)
  end

  def new
    @receivableaccount = Receivableaccount.new
    respond_with(@receivableaccount)
  end

  def edit
  end

  def create
    @receivableaccount = Receivableaccount.new(receivableaccount_params)
    @receivableaccount.save
    respond_with(@receivableaccount)
  end

  def update
    @receivableaccount.update(receivableaccount_params)
    respond_with(@receivableaccount)
  end

  def destroy
    @receivableaccount.destroy
    respond_with(@receivableaccount)
  end

  private
    def set_receivableaccount
      @receivableaccount = Receivableaccount.find(params[:id])
    end

    def receivableaccount_params
      params.require(:receivableaccount).permit(:name, :initbalance, :descroption, :pymenttype_id, :subtype, :ammount, :percentammount, :aliquot, :building, :community_id)
    end
end
