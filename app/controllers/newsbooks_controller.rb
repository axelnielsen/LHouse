class NewsbooksController < ApplicationController
  before_action :set_newsbook, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @newsbooks = Newsbook.all
    #respond_with(@newsbooks)
  end

  def show
    @newsbook = Newsbook.find([:id])
    #respond_with(@newsbook)
  end

  def new
    @newsbook = Newsbook.new
   # respond_with(@newsbook)
  end

  def edit
    @newsbook = Newsbook.find(params[:id])
  end

  def create
  @newsbooks = Newsbook.all
   @newsbook = Newsbook.create(newsbook_params)
   # @newsbook = Newsbook.new(newsbook_params)
   # @newsbook.save
   # respond_with(@newsbook)
  end

  def update
    @newsbooks = Newsbook.all
    @newsbook = Newsbook.find(params[:id])
    @newsbook.update_attributes(newsbook_params)
    #@newsbook.update(newsbook_params)
    #respond_with(@newsbook)
  end

  def destroy
    @newsbooks = Newsbook.all
    @newsbook = Newsbook.find(params[:id])
    @newsbook.destroy
   # @newsbook.destroy
   # respond_with(@newsbook)
  end

  def delete
    @newsbook = Newsbook.find(params[:newsbook_id])
  end

  private
   def set_newsbook
     @newsbook = Newsbook.find(params[:id])
   end

    def newsbook_params
      params.require(:newsbook).permit(:name, :description, :user_id)
    end
end
