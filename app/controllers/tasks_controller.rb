class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @result_task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])

    task.name = task_params[:name]
    task.description = task_params[:description]

    if task.save
      redirect_to task_path(task.id)
    end
  end

  def destroy
    Task.destroy(params[:id])

    redirect_to tasks_path
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.create task_params

    unless task.id == nil
      redirect_to tasks_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end
end
