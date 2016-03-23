class BankaccountsController < ApplicationController
  before_action :set_bankaccount, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bankaccounts = Bankaccount.all
    respond_with(@bankaccounts)
  end

  def show
    respond_with(@bankaccount)
  end

  def new
    @bankaccount = Bankaccount.new
    respond_with(@bankaccount)
  end

  def edit
  end

  def create
    @bankaccount = Bankaccount.new(bankaccount_params)
    @bankaccount.save
    respond_with(@bankaccount)
  end

  def update
    @bankaccount.update(bankaccount_params)
    respond_with(@bankaccount)
  end

  def destroy
    @bankaccount.destroy
    respond_with(@bankaccount)
  end

  private
    def set_bankaccount
      @bankaccount = Bankaccount.find(params[:id])
    end

    def bankaccount_params
      params.require(:bankaccount).permit(:name, :accountholder, :accountnum, :bankname, :initbalance, :community_id)
    end
end
