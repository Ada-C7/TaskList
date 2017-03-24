class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)

    redirect_to tasks_path
  end

  def show
    index = params[:id].to_i
    @task = Task.find(index)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params) #update_attributes
    # task.save

    redirect_to task_path
  end

  def done
    # task =
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    return params.require(:task).permit(:name, :description, :finished)
  end
end
