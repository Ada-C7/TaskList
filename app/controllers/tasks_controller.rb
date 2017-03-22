class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task=Task.new
  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :completed_at, :done)
  end

end
