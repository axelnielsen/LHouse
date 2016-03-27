class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  respond_to :html

 
  def index
    @services = Service.all
    #respond_with(@services)
  end

  def show
    @service = Service.find([:id])
    #respond_with(@service)
  end

  def new
    @service = Service.new
   # respond_with(@service)
  end

  def edit
    @service = Service.find(params[:id])
  end

  def create
  @services = Service.all
   @service = Service.create(service_params)
   # @service = Service.new(service_params)
   # @service.save
   # respond_with(@service)
  end

  def update
    @services = Service.all
    @service = Service.find(params[:id])
    @service.update_attributes(service_params)
    #@service.update(service_params)
    #respond_with(@service)
  end

  def destroy
    @services = Service.all
    @service = Service.find(params[:id])
    @service.destroy
   # @service.destroy
   # respond_with(@service)
  end

  def delete
    @service = Service.find(params[:service_id])
  end

  private
   def set_service
     @service = Service.find(params[:id])
   end


    def service_params
      params.require(:service).permit(:period, :porcgastocomun, :porcaguacaliente, :porccalefaccion, :vendor_id, :custnumber, :payableaccount_id)
    end
end
