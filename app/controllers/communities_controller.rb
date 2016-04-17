class CommunitiesController < ApplicationController
  before_action :set_community, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @communities=Community.order(:nombre)
    respond_to do |format|
    format.html
    format.csv { send_data @communities.to_csv }
    format.xls # { send_data @products.to_csv(col_sep: "\t") }
  end
   # @communities = Community.all
   # respond_with(@communities)
  end

  def import
  Community.import(params[:file])
  redirect_to root_url, notice: "Archivo importado exitosamente!"
  end

  def show
    respond_with(@community)
  end

  def new
    @community = Community.new
    respond_with(@community)
  end

  def edit
  end

  def create
    @community = Community.new(community_params)
    @community.save
    respond_with(@community)
  end

  def update
    @community.update(community_params)
    respond_with(@community)
  end

  def destroy
    @community.destroy
    respond_with(@community)
  end


  private
    def set_community
      @community = Community.find(params[:id])
    end

    def community_params
      params.require(:community).permit(:id, :nombre, :address, :phone, :email, :website, :community_id, :userpass, :adminpass, :concierge)
    end
end
