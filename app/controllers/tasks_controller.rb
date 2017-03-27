class TasksController < ApplicationController

  #create
  def create

    task = Task.create task_params
    unless task.id == nil
      redirect_to tasks_path
    end
  end

  def new
    @task = Task.new
  end

  #read
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  #update
  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])

    if task.update(task_params)
      redirect_to tasks_path
    end
  end

  def complete
    task = Task.find(params[:id])

    if task.update(task_params)
      redirect_to complete_task_path(task.id)
    end
  end

  #destroy
  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :title, :completion_date, :complete)
  end
end
