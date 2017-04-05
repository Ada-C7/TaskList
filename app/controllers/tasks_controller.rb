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
      if task.update(task_params)
        redirect_to task_path
      end
  end

  def completed
    task = Task.find(params[:id])
    if task.completed
       task.completed = false
    else
      task.completion_date = Time.now
      task.completed = true
    end

    if task.save
      redirect_to task_path
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
      params.require(:task).permit(:name, :description, :completion_date, :completed)
  end
end
