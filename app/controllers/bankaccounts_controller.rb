class BankaccountsController < ApplicationController
  before_action :set_bankaccount, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
     @bankaccounts=Bankaccount.order(:name)
    respond_to do |format|
    format.html
    format.csv { send_data @bankaccounts.to_csv }
    format.xls # { send_data @products.to_csv(col_sep: "\t") }
  end
 
  end

  def import
  Bankaccount.import(params[:file])
  redirect_to root_url, notice: "Archivo importado exitosamente!"
  end

  def show
    @bankaccount = Bankaccount.find(params[:id])
    #respond_with(@bankaccount)
  end

  def new
    @bankaccount = Bankaccount.new
   # respond_with(@bankaccount)
  end

  def edit
    @bankaccount = Bankaccount.find(params[:id])
  end

  def create
  @bankaccounts = Bankaccount.all
   @bankaccount = Bankaccount.create(bankaccount_params)
   # @bankaccount = Bankaccount.new(bankaccount_params)
   # @bankaccount.save
   # respond_with(@bankaccount)
  end

  def update
    @bankaccounts = Bankaccount.all
    @bankaccount = Bankaccount.find(params[:id])
    @bankaccount.update_attributes(bankaccount_params)
    #@bankaccount.update(bankaccount_params)
    #respond_with(@bankaccount)
  end

  def destroy
    @bankaccounts = Bankaccount.all
    @bankaccount = Bankaccount.find(params[:id])
    @bankaccount.destroy
   # @bankaccount.destroy
   # respond_with(@bankaccount)
  end

  def delete
    @bankaccount = Bankaccount.find(params[:bankaccount_id])
  end

  private
   def set_bankaccount
     @bankaccount = Bankaccount.find(params[:id])
   end

   


    def bankaccount_params
      params.require(:bankaccount).permit(:name, :accountholder, :accountnum, :bankname, :initbalance, :community_id)
    end
end
