class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.create task_params
    redirect_to tasks_path unless task.id == nil
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])

    task.name = task_params[:name]
    task.description = task_params[:description]
    task.deadline = task_params[:deadline]
    task.completed = task_params[:completed]

    if task.save
      redirect_to task_path(task.id)
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :deadline, :completed)
  end
end
