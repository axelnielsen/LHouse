class JournalsController < ApplicationController
  before_action :set_journal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @journals = Journal.all
    #respond_with(@journals)
    @journal = Journal.new
  end

  def show
    respond_with(@journal)
  end

  def new
    @journal = Journal.new
    ##respond_with(@journal)
  end

  def edit
  end


  def create
    @journal = Journal.new(journal_params)
    ##@journal = Journal.new(journal_params)
    ##@journal.save
    ##respond_with(@journal)
     respond_to do |format|
      if @journal.save
        format.html { redirect_to @journal, notice: 'Pago registrado exitosamente' }
        format.json { render action: 'show', status: :created, location: @journal }
        # added:
        format.js   { render action: 'show', status: :created, location: @journal }
      else
        format.html { render action: 'new' }
        format.json { render json: @journal.errors, status: :unprocessable_entity }
        # added:
        format.js   { render json: @journal.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @journal.update(journal_params)
    respond_with(@journal)
  end

  def destroy
    @journal.destroy
    respond_with(@journal)
  end

  private
    def set_journal
      @journal = Journal.find(params[:id])
    end

    def journal_params
      params.require(:journal).permit(:name, :vendor_id, :paybleaccount_id, :receivableaccount_id, :credit, :debit, :description, :image, :journalnum, :community_id, :duedate, :paymentdate, :user_id)
    end
end
