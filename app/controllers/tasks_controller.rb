class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  respond_to :html
def index
    @tasks = Task.all
    #respond_with(@tasks)
  end

  def show
    @task = Task.find([:id])
    #respond_with(@task)
  end

  def new
    @task = Task.new
   # respond_with(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
  @tasks = Task.all
   @task = Task.create(task_params)
   # @task = Task.new(task_params)
   # @task.save
   # respond_with(@task)
  end

  def update
    @tasks = Task.all
    @task = Task.find(params[:id])
    @task.update_attributes(task_params)
    #@task.update(task_params)
    #respond_with(@task)
  end

  def destroy
    @tasks = Task.all
    @task = Task.find(params[:id])
    @task.destroy
   # @task.destroy
   # respond_with(@task)
  end

  def delete
    @task = Task.find(params[:task_id])
  end

  private
   def set_task
     @task = Task.find(params[:id])
   end

    def task_params
      params.require(:task).permit(:name, :inidate, :findate, :inihour, :finhour, :content, :user_id_from, :user_id_to, :perccompleted)
    end
end
