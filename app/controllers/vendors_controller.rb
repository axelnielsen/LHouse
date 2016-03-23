class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vendors = Vendor.all
    #respond_with(@vendors)
  end

  def show
    @vendor = Vendor.find([:id])
    #respond_with(@vendor)
  end

  def new
    @vendor = Vendor.new
   # respond_with(@vendor)
  end

  def edit
    @vendor = Vendor.find(params[:id])
  end

  def create
  @vendors = Vendor.all
   @vendor = Vendor.create(vendor_params)
   # @vendor = Vendor.new(vendor_params)
   # @vendor.save
   # respond_with(@vendor)
  end

  def update
    @vendors = Vendor.all
    @vendor = Vendor.find(params[:id])
    @vendor.update_attributes(vendor_params)
    #@vendor.update(vendor_params)
    #respond_with(@vendor)
  end

  def destroy
    @vendors = Vendor.all
    @vendor = Vendor.find(params[:id])
    @vendor.destroy
   # @vendor.destroy
   # respond_with(@vendor)
  end

  def delete
    @vendor = Vendor.find(params[:vendor_id])
  end

  private
   def set_vendor
     @vendor = Vendor.find(params[:id])
   end

   

    def vendor_params
      params.require(:vendor).permit(:name, :rut, :accountnum, :bankname, :community_id, :contactphone, :contactmail, :website, :address, :bankaccount_id)
    end
end
