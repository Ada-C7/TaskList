class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def check
    @task=Task.find(params[:id])
  end

  def create
    Task.create(task_params)

    redirect_to tasks_path
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy

    redirect_to tasks_path
  end

  def edit
    @task=Task.find(params[:id])
  end

  def new
    @task = Task.new(completed: nil)
  end

  def show
    @task = Task.find(params[:id])
  end


  def update
    task = Task.find(params[:id])
    task.update_attributes(task_params)
    task.save

    redirect_to tasks_path
  end

  def completed
    task = Task.find(params[:id])
    task.complete
    task.save
    redirect_to tasks_path
  end



  private
  def task_params
    return params.require(:task).permit(:chore, :completed, :name)
  end
end
