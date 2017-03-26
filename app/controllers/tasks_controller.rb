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
    task.deadline ||= Time.now
    task.save
    redirect_to tasks_path unless task.id == nil
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

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_path
  end

  def toggle_complete
    task = Task.find(params[:id])
    if task.completed
      task.completed = nil
    else
      task.completed = Time.now
    end

    redirect_to(:back) if task.save
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :deadline)
  end
end
