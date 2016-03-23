class CommentsController < ApplicationController
  before_action :find_commentable
  #, :set_comment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @comments = Comment.all
    respond_with(@comments)
  end

  def show
    respond_with(@comment)
  end

  def new
    @comment = Comment.new
    #respond_with(@comment)
  end

  def edit
  end

  def create
      @comment = @commentable.comments.new comment_params

      if @comment.save
        redirect_to :back, notice: 'Comentario agregado exitosamente'
      else
        redirect_to :back, notice: "Ups, ocurrió un erorr al guardar tu comentario. Intente nuevamente ;)"
      end
  end

  def update
    @comment.update(comment_params)
    respond_with(@comment)
  end

  def destroy
    @comment.destroy
    respond_with(@comment)
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:user_id, :status_id, :comment, :commentable_id, :commentable_type)
    end

    def find_commentable
          @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
          @commentable = Status.find_by_id(params[:status_id]) if params[:status_id]
    end
end
    
