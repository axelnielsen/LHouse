class JournaloutsController < ApplicationController
  before_action :set_journalout, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @journalouts = Journalout.all
    #respond_with(@journalouts)
  end

  def show
    @journalout = Journalout.find([:id])
    #respond_with(@journalout)
  end

  def new
    @journalout = Journalout.new
   # respond_with(@journalout)
  end

  def edit
    @journalout = Journalout.find(params[:id])
  end

  def create
  @journalouts = Journalout.all
   @journalout = Journalout.create(journalout_params)
   # @journalout = journalout.new(journalout_params)
   # @journalout.save
   # respond_with(@journalout)
  end

  def update
    @journalouts = Journalout.all
    @journalout = Journalout.find(params[:id])
    @journalout.update_attributes(journalout_params)
    #@journalout.update(journalout_params)
    #respond_with(@journalout)
  end

  def destroy
    @journalouts = Journalout.all
    @journalout = Journalout.find(params[:id])
    @journalout.destroy
   # @journalout.destroy
   # respond_with(@journalout)
  end

  def delete
    @journalout = Journalout.find(params[:journalout_id])
  end

  private
   def set_journalout
     @journalout = Journalout.find(params[:id])
   end

    def journalout_params
      params.require(:journalout).permit(:name, :voucher, :payable, :amount, :description, :community_id, :paymentdate, :paymentmethod_id, :image, :period, :user_id)
    end
end
