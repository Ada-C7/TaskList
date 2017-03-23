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

  def new
    @task = Task.new
  end

  def create
    task = Task.create task_params

    redirect_to tasks_path
  end

  private

  def task_params
      params.require(:task).permit(:name, :description, :completion_date, :completed)
  end
end
