class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    # Task.new
  end

  def create
    # puts ">>>>>>>>>>>>>>>>#{params[:complete_by]}>>>>>>>>>>>>>>"
    # Time.parse(params[:complete_by])
      # date.strftime("'%Y-%m-%d'");
    # params[:complete_by] = DateTime.parse(params[:complete_by])
    # params[:complete_by]
    # puts ">>>> CDC: In Tasks Controller#create"
    # puts params[:task].to_hash
    Task.create(task_params)
    redirect_to tasks_path
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end

  #helper method to verify the given info from the user
private
  def task_params
    return params.require(:task).permit(:name, :description, :complete_by)
  end

end
