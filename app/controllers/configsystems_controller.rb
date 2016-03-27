class ConfigsystemsController < ApplicationController
  before_action :set_configsystem, only: [:show, :edit, :update, :destroy]

  respond_to :html

 def index
    @configsystems = Configsystem.all
    #respond_with(@configsystems)
  end

  def show
    @configsystem = Configsystem.find([:id])
    #respond_with(@configsystem)
  end

  def new
    @configsystem = Configsystem.new
   # respond_with(@configsystem)
  end

  def edit
    @configsystem = Configsystem.find(params[:id])
  end

  def create
  @configsystems = Configsystem.all
   @configsystem = Configsystem.create(configsystem_params)
   # @configsystem = Configsystem.new(configsystem_params)
   # @configsystem.save
   # respond_with(@configsystem)
  end

  def update
    @configsystems = Configsystem.all
    @configsystem = Configsystem.find(params[:id])
    @configsystem.update_attributes(configsystem_params)
    #@configsystem.update(configsystem_params)
    #respond_with(@configsystem)
  end

  def destroy
    @configsystems = Configsystem.all
    @configsystem = Configsystem.find(params[:id])
    @configsystem.destroy
   # @configsystem.destroy
   # respond_with(@configsystem)
  end

  def delete
    @configsystem = Configsystem.find(params[:configsystem_id])
  end

  private
   def set_configsystem
     @configsystem = Configsystem.find(params[:id])
   end

    def configsystem_params
      params.require(:configsystem).permit(:interesttype_id, :interesttypeperc, :interestreceivableaccount_id, :penaltyamount, :penaltyreceivableaccount_id, :periodyear, :periodmonth, :periodinit, :periodfin, :extension, :correctionday)
    end
end
