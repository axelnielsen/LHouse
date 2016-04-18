class SubsubaccountsController < ApplicationController
  before_action :set_subsubaccount, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @subsubaccounts = Subsubaccount.all
    respond_with(@subsubaccounts)
  end

  def show
    respond_with(@subsubaccount)
  end

  def new
    @subsubaccount = Subsubaccount.new
    respond_with(@subsubaccount)
  end

  def edit
  end

  def create
    @subsubaccount = Subsubaccount.new(subsubaccount_params)
    @subsubaccount.save
    respond_with(@subsubaccount)
  end

  def update
    @subsubaccount.update(subsubaccount_params)
    respond_with(@subsubaccount)
  end

  def destroy
    @subsubaccount.destroy
    respond_with(@subsubaccount)
  end

  private
    def set_subsubaccount
      @subsubaccount = Subsubaccount.find(params[:id])
    end

    def subsubaccount_params
      params.require(:subsubaccount).permit(:name, :subaccount_id)
    end
end
