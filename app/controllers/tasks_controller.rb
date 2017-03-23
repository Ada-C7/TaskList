class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @this_task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
  task = Task.create task_params
    if task.save
      redirect_to tasks_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :desc)
  end

end
