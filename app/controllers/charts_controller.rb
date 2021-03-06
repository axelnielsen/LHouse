class ChartsController < ApplicationController
  before_action :set_chart, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @charts = Chart.all
    respond_with(@charts)
  end

  def show
    respond_with(@chart)
  end

  def new
    @chart = Chart.new
    respond_with(@chart)
  end

  def edit
  end

  def create
    @chart = Chart.new(chart_params)
    @chart.save
    respond_with(@chart)
  end

  def update
    @chart.update(chart_params)
    respond_with(@chart)
  end

  def destroy
    @chart.destroy
    respond_with(@chart)
  end

  private
    def set_chart
      @chart = Chart.find(params[:id])
    end

    def chart_params
      params.require(:chart).permit(:name)
    end
end
