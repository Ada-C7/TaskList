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
    @task=Task.find(params[:id])
  end

  def edit
    @task=Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to tasks_path
  end

  def complete
    task = Task.find(params[:id])
    completion_time=DateTime.now
    task.update(completed_at:completion_time)
    redirect_to tasks_path
  end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :completed_at, :done)
  end

end
