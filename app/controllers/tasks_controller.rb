class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @result_task = Task.find(params[:id])
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

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.name = params[:task][:name]
    task.description = params[:task][:description]
    task.context = params[:task][:context]
    if task.save
      redirect_to task_path
    end

  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :context)
  end
end
