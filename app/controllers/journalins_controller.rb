class JournalinsController < ApplicationController
  before_action :set_journalin, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @journalins = Journalin.all
    #respond_with(@journalins)
  end

  def show
    @journalin = Journalin.find([:id])
    #respond_with(@journalin)
  end

  def new
    @journalin = Journalin.new
   # respond_with(@journalin)
  end

  def edit
    @journalin = Journalin.find(params[:id])
  end

  def create
  @journalins = Journalin.all
   @journalin = Journalin.create(journalin_params)
   # @journalin = Journalin.new(journalin_params)
   # @journalin.save
   # respond_with(@journalin)
  end

  def update
    @journalins = Journalin.all
    @journalin = Journalin.find(params[:id])
    @journalin.update_attributes(journalin_params)
    #@journalin.update(journalin_params)
    #respond_with(@journalin)
  end

  def destroy
    @journalins = Journalin.all
    @journalin = Journalin.find(params[:id])
    @journalin.destroy
   # @journalin.destroy
   # respond_with(@journalin)
  end

  def delete
    @journalin = Journalin.find(params[:journalin_id])
  end

  private
   def set_journalin
     @journalin = Journalin.find(params[:id])
   end

    def journalin_params
      params.require(:journalin).permit(:name, :voucher, :receivableaccount_id, :amount, :description, :community_id, :paymentdate, :apartment_id, :paymentmethod_id, :image, :period, :user_id)
    end
end
