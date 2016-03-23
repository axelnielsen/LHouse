class PaymentmethodsController < ApplicationController
  before_action :set_paymentmethod, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @paymentmethods = Paymentmethod.all
    respond_with(@paymentmethods)
  end

  def show
    respond_with(@paymentmethod)
  end

  def new
    @paymentmethod = Paymentmethod.new
    respond_with(@paymentmethod)
  end

  def edit
  end

  def create
    @paymentmethod = Paymentmethod.new(paymentmethod_params)
    @paymentmethod.save
    respond_with(@paymentmethod)
  end

  def update
    @paymentmethod.update(paymentmethod_params)
    respond_with(@paymentmethod)
  end

  def destroy
    @paymentmethod.destroy
    respond_with(@paymentmethod)
  end

  private
    def set_paymentmethod
      @paymentmethod = Paymentmethod.find(params[:id])
    end

    def paymentmethod_params
      params.require(:paymentmethod).permit(:name)
    end
end
