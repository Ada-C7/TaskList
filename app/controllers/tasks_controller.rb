class TasksController < ApplicationController

  def self.random_time
    Time.at(rand * Time.now.to_i)
  end

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def edit
    task = Task.find(params[:id])
    task(task_params)
    task.save

    redirect_to tasks_path(task.id)
  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def show
    id = params[:id].to_i
    @task = Task.find(id)
  end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :completed_at)
  end
end
